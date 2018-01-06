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
namespace NStateManager
{
    /// <summary>
    /// The result of any state transition that occured from executing a request or transition on the <see cref="StateMachine{T,TState,TTrigger}"/>./>
    /// </summary>
    /// <typeparam name="TState">Represents a state for the objecting being managed.</typeparam>
    public sealed class StateTransitionResult<TState>
    {
        /// <summary>
        /// Boolean result of the condition, if any, for the transition.
        /// </summary>
        /// <remarks>Will only be False if there was a transition defined (i.e. TransitionDefined is True) and it returned False.</remarks>
        public bool ConditionMet { get; }

        /// <summary>
        /// Current state -- after all transitions and actions have been executed.
        /// </summary>
        public TState CurrentState { get; internal set; }

        /// <summary>
        /// State the context was in just before the current state.
        /// </summary>
        public TState PreviousState { get; internal set; }

        /// <summary>
        /// State when execution of the request or transition began.
        /// </summary>
        public TState StartingState { get; }

        /// <summary>
        /// True if there was a transition defined for the request or transition; otherwise False.
        /// </summary>
        public bool TransitionDefined { get; }

        /// <summary>
        /// True if the action was cancelled; otherwise False.
        /// </summary>
        public bool WasCancelled { get; }

        /// <summary>
        /// True if the transition was successful; otherwise false.
        /// </summary>
        /// <remarks>Will only be True if there was a transition defined (i.e. TransitionDefined is True) and any conditions were met.</remarks>
        public bool WasSuccessful { get; }

        /// <summary>
        /// Constructor.
        /// </summary>
        /// <param name="startingState">State when execution of the request or transition.</param>
        /// <param name="currentState"> Current state -- after all transitions and actions have been executed.</param>
        /// <param name="transitionDefined">True if there was a transition defined for the request or transition; otherwise False.</param>
        /// <param name="conditionMet">Boolean result of the condition, if any, for the transition.</param>
        /// <param name="wasCancelled">True if the action was cancelled; otherwise False.</param>
        public StateTransitionResult(TState startingState, TState previousState, TState currentState, bool transitionDefined = true, bool conditionMet = true, bool wasCancelled = false)
        {
            StartingState = startingState;
            PreviousState = previousState;
            CurrentState = currentState;
            WasSuccessful = transitionDefined && conditionMet && !wasCancelled;
            TransitionDefined = transitionDefined;
            ConditionMet = transitionDefined && conditionMet;
            WasCancelled = wasCancelled;
        }
    }
}
