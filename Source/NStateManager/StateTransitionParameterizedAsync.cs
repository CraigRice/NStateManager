﻿#region Copyright (c) 2018 Scott L. Carter
//
//Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in
//compliance with the License. You may obtain a copy of the License at
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software distributed under the License is 
//distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and limitations under the License.
#endregion
using System;
using System.Threading;
using System.Threading.Tasks;

namespace NStateManager
{
    internal class StateTransitionParameterizedAsync<T, TState, TTrigger, TParam> : StateTransitionBase<T, TState, TTrigger>
        where TParam : class
    {
        public Func<T, TParam, CancellationToken, Task<bool>> ConditionAsync { get; }

        public StateTransitionParameterizedAsync(Func<T, TState> stateAccessor, Action<T, TState> stateMutator, TState toState, Func<T, TParam, CancellationToken, Task<bool>> conditionAsync, string name, uint priority)
            : base(stateAccessor, stateMutator, toState, name, priority)
        {
            ConditionAsync = conditionAsync ?? throw new ArgumentNullException(nameof(conditionAsync));
        }

        public override async Task<StateTransitionResult<TState>> ExecuteAsync(ExecutionParameters<T, TTrigger> parameters
          , StateTransitionResult<TState> currentResult = null)
        {
            //TODO do we really need to enforce this not being null??
            if (parameters.Request == null)
            { throw new ArgumentNullException(nameof(parameters.Request)); }

            //TODO if we don't force to be non-null, must check for null
            if (!(parameters.Request is TParam typeSafeParam))
            { throw new ArgumentException($"Expected a {typeof(TParam).Name} parameter, but received a {parameters.Request.GetType().Name}."); }

            var startState = currentResult != null ? currentResult.StartingState : StateAccessor(parameters.Context);

            if (parameters.CancellationToken.IsCancellationRequested)
            {
                if (currentResult != null)
                { return currentResult; }

                return new StateTransitionResult<TState>(startState
                  , startState
                  , startState
                  , lastTransitionName: string.Empty
                  , conditionMet: false
                  , wasCancelled: true);
            }

            if (!await ConditionAsync(parameters.Context, typeSafeParam, parameters.CancellationToken)
               .ConfigureAwait(continueOnCapturedContext: false))
            {
                return new StateTransitionResult<TState>(startState
                    , currentResult == null ? startState : currentResult.PreviousState
                    , currentResult == null ? startState : currentResult.CurrentState
                    , lastTransitionName: currentResult == null ? string.Empty : currentResult.LastTransitionName
                    , conditionMet: currentResult != null //If there's a currentResult, something was successful
                    , wasCancelled: parameters.CancellationToken.IsCancellationRequested);
            }

            StateMutator(parameters.Context, ToState);
            var transitionResult = currentResult == null
                ? new StateTransitionResult<TState>(startState, startState, ToState, Name)
                : new StateTransitionResult<TState>(startState, currentResult.CurrentState, ToState, Name);
            NotifyOfTransition(parameters.Context, transitionResult);

            return transitionResult;
        }
    }
}