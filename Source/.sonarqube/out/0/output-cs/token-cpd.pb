�
NC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str +
)+ ,
], -
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str *
)* +
]+ ,
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 3
)3 4
]4 5
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

Guid"" 
("" 
$str"" 6
)""6 7
]""7 8
[++ 
assembly++ 	
:++	 

AssemblyVersion++ 
(++ 
$str++ "
)++" #
]++# $
[,, 
assembly,, 	
:,,	 

AssemblyFileVersion,, 
(,, 
$str,, &
),,& '
],,' (�
UC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\ExecutionParameters.cs
	namespace 	
NStateManager
 
{ 
public 

class 
ExecutionParameters $
<$ %
T% &
,& '
TTrigger( 0
>0 1
{ 
public 
TTrigger 
Trigger 
{  !
get" %
;% &
}' (
public 
T 
Context 
{ 
get 
; 
}  !
public 
object 
Request 
{ 
get  #
;# $
}% &
public 
CancellationToken  
CancellationToken! 2
{3 4
get5 8
;8 9
}: ;
public 
ExecutionParameters "
(" #
TTrigger# +
trigger, 3
,
 
T 
context 
,
 
CancellationToken 
cancellationToken /
=0 1
default2 9
(9 :
CancellationToken: K
)K L
,
 
object 
request 
= 
null !
)! "
{ 	
Trigger 
= 
trigger 
; 
Context 
= 
context 
; 
Request 
= 
request 
; 
CancellationToken 
= 
cancellationToken  1
;1 2
} 	
}   
}!! �
LC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\Extensions.cs
	namespace 	
NStateManager
 
{ 
public 

static 
class 

Extensions "
{ 
public 
static 
bool 
IsEqual "
<" #
TState# )
>) *
(* +
this+ /
TState0 6
first7 <
,< =
TState> D
secondE K
)K L
whereM R
TStateS Y
:Z [
IComparable\ g
{ 	
return 
first 
. 
	CompareTo "
(" #
second# )
)) *
==+ -
$num. /
;/ 0
} 	
} 
} �
PC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\FunctionAction.cs
	namespace 	
NStateManager
 
{ 
internal 
class 
FunctionAction !
<! "
T" #
># $
:% &
FunctionActionBase' 9
<9 :
T: ;
>; <
{ 
internal 
Func 
< 
T 
, 
CancellationToken *
,* +
Task, 0
>0 1
Action2 8
{9 :
get; >
;> ?
}@ A
internal 
FunctionAction 
(  
Func  $
<$ %
T% &
,& '
CancellationToken( 9
,9 :
Task; ?
>? @
actionA G
)G H
{ 	
Action 
= 
action 
?? 
throw $
new% (!
ArgumentNullException) >
(> ?
nameof? E
(E F
actionF L
)L M
)M N
;N O
} 	
internal 
override 
async 
Task  $
ExecuteAsync% 1
(1 2
T2 3
context4 ;
,; <
CancellationToken= N
cancellationTokenO `
,` a
objectb h
requesti p
)p q
{ 	
await 
Action 
. 
Invoke 
(  
context  '
,' (
cancellationToken) :
): ;
.; <
ConfigureAwait< J
(J K%
continueOnCapturedContextK d
:d e
falsef k
)k l
;l m
} 	
} 
} �
TC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\FunctionActionBase.cs
	namespace 	
NStateManager
 
{ 
public 

abstract 
class 
FunctionActionBase ,
<, -
T- .
>. /
{ 
internal 
abstract 
Task 
ExecuteAsync +
(+ ,
T, -
context. 5
,5 6
CancellationToken7 H
cancellationTokenI Z
,Z [
object\ b
requestc j
)j k
;k l
} 
} �
]C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\FunctionActionParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class '
FunctionActionParameterized .
<. /
T/ 0
,0 1
TRequest2 :
>: ;
:< =
FunctionActionBase> P
<P Q
TQ R
>R S
{ 
internal 
Func 
< 
T 
, 
TRequest !
,! "
CancellationToken# 4
,4 5
Task6 :
>: ;
Action< B
{C D
getE H
;H I
}J K
internal '
FunctionActionParameterized ,
(, -
Func- 1
<1 2
T2 3
,3 4
TRequest5 =
,= >
CancellationToken? P
,P Q
TaskR V
>V W
actionX ^
)^ _
{ 	
Action 
= 
action 
?? 
throw $
new% (!
ArgumentNullException) >
(> ?
nameof? E
(E F
actionF L
)L M
)M N
;N O
} 	
internal 
override 
async 
Task  $
ExecuteAsync% 1
(1 2
T2 3
context4 ;
,; <
CancellationToken= N
cancellationTokenO `
,` a
objectb h
requesti p
)p q
{ 	
if 
( 
! 
( 
request 
is 
TRequest %
typedRequestType& 6
)6 7
)7 8
{ 
throw 
new 
ArgumentException )
() *
$"* ,
{, -
nameof- 3
(3 4
request4 ;
); <
}< =
 must be of type = N
{N O
typeofO U
(U V
TRequestV ^
)^ _
._ `
Name` d
}d e
.e f
"f g
)g h
;h i
}i j
await 
Action 
. 
Invoke 
(  
context  '
,' (
typedRequestType) 9
,9 :
cancellationToken; L
)L M
.M N
ConfigureAwaitN \
(\ ]%
continueOnCapturedContext] v
:v w
falsex }
)} ~
;~ 
}   	
}!! 
}"" �V
UC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateConfiguration.cs
	namespace 	
NStateManager
 
{ 
public 

	interface 
IStateConfiguration (
<( )
T) *
,* +
TState, 2
,2 3
TTrigger4 <
>< =
{ 
IStateConfiguration 
< 
T 
, 
TState %
,% &
TTrigger' /
>/ 0$
AddAutoDynamicTransition1 I
(I J
TTriggerJ R
triggerS Z
,Z [
Func\ `
<` a
Ta b
,b c
TStated j
>j k
functionl t
,t u
stringv |
name	} �
=
� �
null
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
;
� �
IStateConfiguration$$ 
<$$ 
T$$ 
,$$ 
TState$$ %
,$$% &
TTrigger$$' /
>$$/ 0$
AddAutoDynamicTransition$$1 I
<$$I J
TRequest$$J R
>$$R S
($$S T
TTrigger$$T \
trigger$$] d
,$$d e
Func$$f j
<$$j k
T$$k l
,$$l m
TRequest$$n v
,$$v w
TState$$x ~
>$$~ 
function
$$� �
,
$$� �
string
$$� �
name
$$� �
=
$$� �
null
$$� �
,
$$� �
uint
$$� �
priority
$$� �
=
$$� �
$num
$$� �
)
$$� �
where%% 
TRequest%% 
:%% 
class%% "
;%%" #
IStateConfiguration00 
<00 
T00 
,00 
TState00 %
,00% &
TTrigger00' /
>00/ 0%
AddAutoFallbackTransition001 J
(00J K
TTrigger00K S
trigger00T [
,00[ \
TState00] c
	tempState00d m
,00m n
Func00o s
<00s t
T00t u
,00u v
bool00w {
>00{ |
	condition	00} �
,
00� �
string
00� �
name
00� �
=
00� �
null
00� �
,
00� �
uint
00� �
priority
00� �
=
00� �
$num
00� �
)
00� �
;
00� �
IStateConfiguration<< 
<<< 
T<< 
,<< 
TState<< %
,<<% &
TTrigger<<' /
><</ 0%
AddAutoFallbackTransition<<1 J
<<<J K
TRequest<<K S
><<S T
(<<T U
TTrigger<<U ]
trigger<<^ e
,<<e f
TState<<g m
	tempState<<n w
,<<w x
Func<<y }
<<<} ~
T<<~ 
,	<< �
TRequest
<<� �
,
<<� �
bool
<<� �
>
<<� �
	condition
<<� �
,
<<� �
string
<<� �
name
<<� �
=
<<� �
null
<<� �
,
<<� �
uint
<<� �
priority
<<� �
=
<<� �
$num
<<� �
)
<<� �
where== 
TRequest== 
:== 
class== "
;==" #
IStateConfigurationHH 
<HH 
THH 
,HH 
TStateHH %
,HH% &
TTriggerHH' /
>HH/ 0$
AddAutoForwardTransitionHH1 I
(HHI J
TTriggerHHJ R
triggerHHS Z
,HHZ [
TStateHH\ b
toStateHHc j
,HHj k
FuncHHl p
<HHp q
THHq r
,HHr s
boolHHt x
>HHx y
	condition	HHz �
=
HH� �
null
HH� �
,
HH� �
string
HH� �
name
HH� �
=
HH� �
null
HH� �
,
HH� �
uint
HH� �
priority
HH� �
=
HH� �
$num
HH� �
)
HH� �
;
HH� �
IStateConfigurationTT 
<TT 
TTT 
,TT 
TStateTT %
,TT% &
TTriggerTT' /
>TT/ 0$
AddAutoForwardTransitionTT1 I
<TTI J
TRequestTTJ R
>TTR S
(TTS T
TTriggerTTT \
triggerTT] d
,TTd e
TStateTTf l
toStateTTm t
,TTt u
FuncTTv z
<TTz {
TTT{ |
,TT| }
TRequest	TT~ �
,
TT� �
bool
TT� �
>
TT� �
	condition
TT� �
=
TT� �
null
TT� �
,
TT� �
string
TT� �
name
TT� �
=
TT� �
null
TT� �
,
TT� �
uint
TT� �
priority
TT� �
=
TT� �
$num
TT� �
)
TT� �
whereUU 
TRequestUU 
:UU 
classUU "
;UU" #
IStateConfiguration__ 
<__ 
T__ 
,__ 
TState__ %
,__% &
TTrigger__' /
>__/ 0 
AddDynamicTransition__1 E
(__E F
TTrigger__F N
trigger__O V
,__V W
Func__X \
<__\ ]
T__] ^
,__^ _
TState__` f
>__f g
function__h p
,__p q
string__r x
name__y }
=__~ 
null
__� �
,
__� �
uint
__� �
priority
__� �
=
__� �
$num
__� �
)
__� �
;
__� �
IStateConfigurationjj 
<jj 
Tjj 
,jj 
TStatejj %
,jj% &
TTriggerjj' /
>jj/ 0 
AddDynamicTransitionjj1 E
<jjE F
TRequestjjF N
>jjN O
(jjO P
TTriggerjjP X
triggerjjY `
,jj` a
Funcjjb f
<jjf g
Tjjg h
,jjh i
TRequestjjj r
,jjr s
TStatejjt z
>jjz {
function	jj| �
,
jj� �
string
jj� �
name
jj� �
=
jj� �
null
jj� �
,
jj� �
uint
jj� �
priority
jj� �
=
jj� �
$num
jj� �
)
jj� �
wherekk 
TRequestkk 
:kk 
classkk "
;kk" #
IStateConfigurationrr 
<rr 
Trr 
,rr 
TStaterr %
,rr% &
TTriggerrr' /
>rr/ 0
AddEntryActionrr1 ?
(rr? @
Actionrr@ F
<rrF G
TrrG H
>rrH I
actionrrJ P
)rrP Q
;rrQ R
IStateConfigurationzz 
<zz 
Tzz 
,zz 
TStatezz %
,zz% &
TTriggerzz' /
>zz/ 0
AddEntryActionzz1 ?
(zz? @
Actionzz@ F
<zzF G
TzzG H
>zzH I
actionzzJ P
,zzP Q
TStatezzR X
previousStatezzY f
)zzf g
;zzg h!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddExitAction
��1 >
(
��> ?
Action
��? E
<
��E F
T
��F G
>
��G H
action
��I O
)
��O P
;
��P Q!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddExitAction
��1 >
(
��> ?
Action
��? E
<
��E F
T
��F G
>
��G H
action
��I O
,
��O P
TState
��Q W
	nextState
��X a
)
��a b
;
��b c!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddReentryAction
��1 A
(
��A B
Action
��B H
<
��H I
T
��I J
>
��J K
action
��L R
)
��R S
;
��S T!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddTransition
��1 >
(
��> ?
TTrigger
��? G
trigger
��H O
,
��O P
TState
��Q W
toState
��X _
,
��_ `
Func
��a e
<
��e f
T
��f g
,
��g h
bool
��i m
>
��m n
	condition
��o x
=
��y z
null
��{ 
,�� �
string��� �
name��� �
=��� �
null��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
;��� �!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddTransition
��1 >
<
��> ?
TRequest
��? G
>
��G H
(
��H I
TTrigger
��I Q
trigger
��R Y
,
��Y Z
TState
��[ a
toState
��b i
,
��i j
Func
��k o
<
��o p
T
��p q
,
��q r
TRequest
��s {
,
��{ |
bool��} �
>��� �
	condition��� �
,��� �
string��� �
name��� �
=��� �
null��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
where
�� 
TRequest
�� 
:
�� 
class
�� "
;
��" #!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddTriggerAction
��1 A
(
��A B
TTrigger
��B J
trigger
��K R
,
��R S
Action
��T Z
<
��Z [
T
��[ \
>
��\ ]
action
��^ d
)
��d e
;
��e f!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
AddTriggerAction
��1 A
<
��A B
TRequest
��B J
>
��J K
(
��K L
TTrigger
��L T
trigger
��U \
,
��\ ]
Action
��^ d
<
��d e
T
��e f
,
��f g
TRequest
��h p
>
��p q
action
��r x
)
��x y
;
��y z!
IStateConfiguration
�� 
<
�� 
T
�� 
,
�� 
TState
�� %
,
��% &
TTrigger
��' /
>
��/ 0
MakeSubStateOf
��1 ?
(
��? @!
IStateConfiguration
��@ S
<
��S T
T
��T U
,
��U V
TState
��W ]
,
��] ^
TTrigger
��_ g
>
��g h&
superStateConfiguration��i �
)��� �
;��� �
}
�� 
}�� �a
ZC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateConfigurationAsync.cs
	namespace 	
NStateManager
 
{ 
public 

	interface $
IStateConfigurationAsync -
<- .
T. /
,/ 0
TState1 7
,7 8
TTrigger9 A
>A B
{ $
IStateConfigurationAsync  
<  !
T! "
," #
TState$ *
,* +
TTrigger, 4
>4 5+
AddAutoForwardDynamicTransition6 U
(U V
TTriggerV ^
trigger_ f
,f g
Funch l
<l m
Tm n
,n o
TStatep v
>v w
function	x �
,
� �
string
� �
name
� �
=
� �
null
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
;
� �$
IStateConfigurationAsync&&  
<&&  !
T&&! "
,&&" #
TState&&$ *
,&&* +
TTrigger&&, 4
>&&4 5+
AddAutoForwardDynamicTransition&&6 U
<&&U V
TRequest&&V ^
>&&^ _
(&&_ `
TTrigger&&` h
trigger&&i p
,&&p q
Func&&r v
<&&v w
T&&w x
,&&x y
TRequest	&&z �
,
&&� �
TState
&&� �
>
&&� �
function
&&� �
,
&&� �
string
&&� �
name
&&� �
=
&&� �
null
&&� �
,
&&� �
uint
&&� �
priority
&&� �
=
&&� �
$num
&&� �
)
&&� �
where'' 
TRequest'' 
:'' 
class'' "
;''" #$
IStateConfigurationAsync22  
<22  !
T22! "
,22" #
TState22$ *
,22* +
TTrigger22, 4
>224 5%
AddAutoFallbackTransition226 O
(22O P
TTrigger22P X
trigger22Y `
,22` a
TState22b h
	tempState22i r
,22r s
Func22t x
<22x y
T22y z
,22z {
CancellationToken	22| �
,
22� �
Task
22� �
<
22� �
bool
22� �
>
22� �
>
22� �
	condition
22� �
,
22� �
string
22� �
name
22� �
=
22� �
null
22� �
,
22� �
uint
22� �
priority
22� �
=
22� �
$num
22� �
)
22� �
;
22� �$
IStateConfigurationAsync>>  
<>>  !
T>>! "
,>>" #
TState>>$ *
,>>* +
TTrigger>>, 4
>>>4 5%
AddAutoFallbackTransition>>6 O
<>>O P
TRequest>>P X
>>>X Y
(>>Y Z
TTrigger>>Z b
trigger>>c j
,>>j k
TState>>l r
	tempState>>s |
,>>| }
Func	>>~ �
<
>>� �
T
>>� �
,
>>� �
TRequest
>>� �
,
>>� �
CancellationToken
>>� �
,
>>� �
Task
>>� �
<
>>� �
bool
>>� �
>
>>� �
>
>>� �
	condition
>>� �
,
>>� �
string
>>� �
name
>>� �
=
>>� �
null
>>� �
,
>>� �
uint
>>� �
priority
>>� �
=
>>� �
$num
>>� �
)
>>� �
where?? 
TRequest?? 
:?? 
class?? "
;??" #$
IStateConfigurationAsyncKK  
<KK  !
TKK! "
,KK" #
TStateKK$ *
,KK* +
TTriggerKK, 4
>KK4 5$
AddAutoForwardTransitionKK6 N
<KKN O
TRequestKKO W
>KKW X
(KKX Y
TTriggerKKY a
triggerKKb i
,KKi j
TStateKKk q
toStateKKr y
,KKy z
FuncKK{ 
<	KK �
T
KK� �
,
KK� �
TRequest
KK� �
,
KK� �
CancellationToken
KK� �
,
KK� �
Task
KK� �
<
KK� �
bool
KK� �
>
KK� �
>
KK� �
	condition
KK� �
,
KK� �
string
KK� �
name
KK� �
=
KK� �
null
KK� �
,
KK� �
uint
KK� �
priority
KK� �
=
KK� �
$num
KK� �
)
KK� �
whereLL 
TRequestLL 
:LL 
classLL "
;LL" #$
IStateConfigurationAsyncWW  
<WW  !
TWW! "
,WW" #
TStateWW$ *
,WW* +
TTriggerWW, 4
>WW4 5$
AddAutoForwardTransitionWW6 N
(WWN O
TTriggerWWO W
triggerWWX _
,WW_ `
TStateWWa g
toStateWWh o
,WWo p
FuncWWq u
<WWu v
TWWv w
,WWw x
CancellationToken	WWy �
,
WW� �
Task
WW� �
<
WW� �
bool
WW� �
>
WW� �
>
WW� �
	condition
WW� �
,
WW� �
string
WW� �
name
WW� �
=
WW� �
null
WW� �
,
WW� �
uint
WW� �
priority
WW� �
=
WW� �
$num
WW� �
)
WW� �
;
WW� �$
IStateConfigurationAsyncaa  
<aa  !
Taa! "
,aa" #
TStateaa$ *
,aa* +
TTriggeraa, 4
>aa4 5 
AddDynamicTransitionaa6 J
(aaJ K
TTriggeraaK S
triggeraaT [
,aa[ \
Funcaa] a
<aaa b
Taab c
,aac d
TStateaae k
>aak l
stateFunctionaam z
,aaz {
string	aa| �
name
aa� �
=
aa� �
null
aa� �
,
aa� �
uint
aa� �
priority
aa� �
=
aa� �
$num
aa� �
)
aa� �
;
aa� �$
IStateConfigurationAsyncll  
<ll  !
Tll! "
,ll" #
TStatell$ *
,ll* +
TTriggerll, 4
>ll4 5 
AddDynamicTransitionll6 J
<llJ K
TRequestllK S
>llS T
(llT U
TTriggerllU ]
triggerll^ e
,lle f
Funcllg k
<llk l
Tlll m
,llm n
TRequestllo w
,llw x
TStatelly 
>	ll �
stateFunction
ll� �
,
ll� �
string
ll� �
name
ll� �
=
ll� �
null
ll� �
,
ll� �
uint
ll� �
priority
ll� �
=
ll� �
$num
ll� �
)
ll� �
wheremm 
TRequestmm 
:mm 
classmm "
;mm" #$
IStateConfigurationAsynctt  
<tt  !
Ttt! "
,tt" #
TStatett$ *
,tt* +
TTriggertt, 4
>tt4 5
AddEntryActiontt6 D
(ttD E
FuncttE I
<ttI J
TttJ K
,ttK L
CancellationTokenttM ^
,tt^ _
Tasktt` d
>ttd e
actionttf l
)ttl m
;ttm n$
IStateConfigurationAsync||  
<||  !
T||! "
,||" #
TState||$ *
,||* +
TTrigger||, 4
>||4 5
AddEntryAction||6 D
(||D E
Func||E I
<||I J
T||J K
,||K L
CancellationToken||M ^
,||^ _
Task||` d
>||d e
action||f l
,||l m
TState||n t
previousState	||u �
)
||� �
;
||� �&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddExitAction
��6 C
(
��C D
Func
��D H
<
��H I
T
��I J
,
��J K
CancellationToken
��L ]
,
��] ^
Task
��_ c
>
��c d
action
��e k
)
��k l
;
��l m&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddExitAction
��6 C
(
��C D
Func
��D H
<
��H I
T
��I J
,
��J K
CancellationToken
��L ]
,
��] ^
Task
��_ c
>
��c d
action
��e k
,
��k l
TState
��m s
	nextState
��t }
)
��} ~
;
��~ &
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddReentryAction
��6 F
(
��F G
Func
��G K
<
��K L
T
��L M
,
��M N
CancellationToken
��O `
,
��` a
Task
��b f
>
��f g
action
��h n
)
��n o
;
��o p&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddTransition
��6 C
(
��C D
TTrigger
��D L
trigger
��M T
,
��T U
TState
��V \
toState
��] d
,
��d e
Func
��f j
<
��j k
T
��k l
,
��l m
CancellationToken
��n 
,�� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
conditionAsync��� �
=��� �
null��� �
,��� �
string��� �
name��� �
=��� �
null��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
;��� �&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddTransition
��6 C
<
��C D
TRequest
��D L
>
��L M
(
��M N
TTrigger
��N V
trigger
��W ^
,
��^ _
TState
��` f
toState
��g n
,
��n o
Func
��p t
<
��t u
T
��u v
,
��v w
TRequest��x �
,��� �!
CancellationToken��� �
,��� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
conditionAsync��� �
,��� �
string��� �
name��� �
=��� �
null��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
where
�� 
TRequest
�� 
:
�� 
class
�� "
;
��" #&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddTriggerAction
��6 F
(
��F G
TTrigger
��G O
trigger
��P W
,
��W X
Func
��Y ]
<
��] ^
T
��^ _
,
��_ `
CancellationToken
��a r
,
��r s
Task
��t x
>
��x y
action��z �
)��� �
;��� �&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
AddTriggerAction
��6 F
<
��F G
TRequest
��G O
>
��O P
(
��P Q
TTrigger
��Q Y
trigger
��Z a
,
��a b
Func
��c g
<
��g h
T
��h i
,
��i j
TRequest
��k s
,
��s t 
CancellationToken��u �
,��� �
Task��� �
>��� �
action��� �
)��� �
;��� �
bool
�� 
	IsInState
�� 
(
�� 
TState
�� 
state
�� #
)
��# $
;
��$ %&
IStateConfigurationAsync
��  
<
��  !
T
��! "
,
��" #
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
MakeSubStateOf
��6 D
(
��D E&
IStateConfigurationAsync
��E ]
<
��] ^
T
��^ _
,
��_ `
TState
��a g
,
��g h
TTrigger
��i q
>
��q r&
superStateConfiguration��s �
)��� �
;��� �
}
�� 
}�� �
bC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateConfigurationAsyncInternal.cs
	namespace 	
NStateManager
 
{ 
public 

	interface ,
 IStateConfigurationAsyncInternal 5
<5 6
T6 7
,7 8
TState9 ?
,? @
TTriggerA I
>I J
:K L$
IStateConfigurationAsyncM e
<e f
Tf g
,g h
TStatei o
,o p
TTriggerq y
>y z
{ 
void 
AddAutoTransition 
( 
TTrigger '
trigger( /
,/ 0
StateTransitionBase1 D
<D E
TE F
,F G
TStateH N
,N O
TTriggerP X
>X Y

transitionZ d
)d e
;e f
void 
AddSuperState 
( ,
 IStateConfigurationAsyncInternal ;
<; <
T< =
,= >
TState? E
,E F
TTriggerG O
>O P#
superStateConfigurationQ h
)h i
;i j
void 
AddTransition 
( 
TTrigger #
trigger$ +
,+ ,
StateTransitionBase- @
<@ A
TA B
,B C
TStateD J
,J K
TTriggerL T
>T U

transitionV `
)` a
;a b
Task 
< !
StateTransitionResult "
<" #
TState# )
,) *
TTrigger+ 3
>3 4
>4 5&
ExecuteAutoTransitionAsync6 P
(P Q
ExecutionParametersQ d
<d e
Te f
,f g
TTriggerh p
>p q

parametersr |
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
)A B
;B C
Task #
ExecuteEntryActionAsync $
($ %
ExecutionParameters% 8
<8 9
T9 :
,: ;
TTrigger< D
>D E

parametersF P
,P Q!
StateTransitionResultR g
<g h
TStateh n
,n o
TTriggerp x
>x y
currentResult	z �
)
� �
;
� �
Task "
ExecuteExitActionAsync #
(# $
ExecutionParameters$ 7
<7 8
T8 9
,9 :
TTrigger; C
>C D

parametersE O
,O P!
StateTransitionResultQ f
<f g
TStateg m
,m n
TTriggero w
>w x
currentResult	y �
)
� �
;
� �
Task %
ExecuteReentryActionAsync &
(& '
ExecutionParameters' :
<: ;
T; <
,< =
TTrigger> F
>F G

parametersH R
,R S!
StateTransitionResultT i
<i j
TStatej p
,p q
TTriggerr z
>z {
currentResult	| �
)
� �
;
� �
Task 
< !
StateTransitionResult "
<" #
TState# )
,) *
TTrigger+ 3
>3 4
>4 5
FireTriggerAsync6 F
(F G
ExecutionParametersG Z
<Z [
T[ \
,\ ]
TTrigger^ f
>f g

parametersh r
)r s
;s t
TState 
State 
{ 
get 
; 
} 
} 
} �
]C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateConfigurationInternal.cs
	namespace 	
NStateManager
 
{ 
public 

	interface '
IStateConfigurationInternal 0
<0 1
T1 2
,2 3
TState4 :
,: ;
TTrigger< D
>D E
:F G
IStateConfigurationH [
<[ \
T\ ]
,] ^
TState_ e
,e f
TTriggerg o
>o p
{ 
void 
AddAutoTransition 
( 
TTrigger '
trigger( /
,/ 0
StateTransitionBase1 D
<D E
TE F
,F G
TStateH N
,N O
TTriggerP X
>X Y

transitionZ d
)d e
;e f
void 
AddSuperState 
( '
IStateConfigurationInternal 6
<6 7
T7 8
,8 9
TState: @
,@ A
TTriggerB J
>J K#
superStateConfigurationL c
)c d
;d e
void 
AddTransition 
( 
TTrigger #
trigger$ +
,+ ,
StateTransitionBase- @
<@ A
TA B
,B C
TStateD J
,J K
TTriggerL T
>T U

transitionV `
)` a
;a b!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /!
ExecuteAutoTransition0 E
(E F
ExecutionParametersF Y
<Y Z
TZ [
,[ \
TTrigger] e
>e f

parametersg q
,q r"
StateTransitionResult	s �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
)
� �
;
� �
void 
ExecuteEntryAction 
(  
T  !
context" )
,) *!
StateTransitionResult+ @
<@ A
TStateA G
,G H
TTriggerI Q
>Q R
currentResultS `
)` a
;a b
void 
ExecuteExitAction 
( 
T  
context! (
,( )!
StateTransitionResult* ?
<? @
TState@ F
,F G
TTriggerH P
>P Q
currentResultR _
)_ `
;` a
void  
ExecuteReentryAction !
(! "
T" #
context$ +
,+ ,!
StateTransitionResult- B
<B C
TStateC I
,I J
TTriggerK S
>S T
currentResultU b
)b c
;c d!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /
FireTrigger0 ;
(; <
ExecutionParameters< O
<O P
TP Q
,Q R
TTriggerS [
>[ \

parameters] g
)g h
;h i
bool 
	IsInState 
( 
TState 
state #
)# $
;$ %
TState 
State 
{ 
get 
; 
} 
} 
} �
OC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateMachine.cs
	namespace 	
NStateManager
 
{ 
public 

	interface 
IStateMachine "
<" #
T# $
,$ %
TState& ,
,, -
TTrigger. 6
>6 7
{ 
IStateMachine 
< 
T 
, 
TState 
,  
TTrigger! )
>) *
AddTriggerAction+ ;
(; <
TTrigger< D
triggerE L
,L M
ActionN T
<T U
TU V
>V W
actionX ^
)^ _
;_ `
IStateMachine 
< 
T 
, 
TState 
,  
TTrigger! )
>) *
AddTriggerAction+ ;
<; <
TRequest< D
>D E
(E F
TTriggerF N
triggerO V
,V W
ActionX ^
<^ _
T_ `
,` a
TRequestb j
>j k
actionl r
)r s
;s t
IStateConfiguration 
< 
T 
, 
TState %
,% &
TTrigger' /
>/ 0
ConfigureState1 ?
(? @
TState@ F
stateG L
)L M
;M N!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /
FireTrigger0 ;
(; <
T< =
context> E
,E F
TTriggerG O
triggerP W
)W X
;X Y!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /
FireTrigger0 ;
<; <
TRequest< D
>D E
(E F
TF G
contextH O
,O P
TTriggerQ Y
triggerZ a
,a b
TRequestc k
requestl s
)s t
whereu z
TRequest	{ �
:
� �
class
� �
;
� �
bool 
	IsInState 
( 
T 
context  
,  !
TState" (
state) .
). /
;/ 0
IStateMachine 
< 
T 
, 
TState 
,  
TTrigger! )
>) *(
RegisterOnTransitionedAction+ G
(G H
ActionH N
<N O
TO P
,P Q!
StateTransitionResultR g
<g h
TStateh n
,n o
TTriggerp x
>x y
>y z
action	{ �
)
� �
;
� �
Func 
< 
T 
, 
TState 
> 
StateAccessor %
{& '
get( +
;+ ,
}- .
Action 
< 
T 
, 
TState 
> 
StateMutator &
{' (
get) ,
;, -
}. /
} 
} �
TC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\IStateMachineAsync.cs
	namespace 	
NStateManager
 
{ 
public 

	interface 
IStateMachineAsync '
<' (
T( )
,) *
TState+ 1
,1 2
TTrigger3 ;
>; <
where 
TState 
: 
IComparable "
{ 
IStateMachineAsync 
< 
T 
, 
TState $
,$ %
TTrigger& .
>. /
AddTriggerAction0 @
(@ A
TTriggerA I
triggerJ Q
,Q R
FuncS W
<W X
TX Y
,Y Z
CancellationToken[ l
,l m
Taskn r
>r s
actiont z
)z {
;{ |
IStateMachineAsync%% 
<%% 
T%% 
,%% 
TState%% $
,%%$ %
TTrigger%%& .
>%%. /
AddTriggerAction%%0 @
<%%@ A
TRequest%%A I
>%%I J
(%%J K
TTrigger%%K S
trigger%%T [
,%%[ \
Func%%] a
<%%a b
T%%b c
,%%c d
TRequest%%e m
,%%m n
CancellationToken	%%o �
,
%%� �
Task
%%� �
>
%%� �
action
%%� �
)
%%� �
;
%%� �$
IStateConfigurationAsync,,  
<,,  !
T,,! "
,,," #
TState,,$ *
,,,* +
TTrigger,,, 4
>,,4 5
ConfigureState,,6 D
(,,D E
TState,,E K
state,,L Q
),,Q R
;,,R S
Task66 
<66 !
StateTransitionResult66 "
<66" #
TState66# )
,66) *
TTrigger66+ 3
>663 4
>664 5
FireTriggerAsync666 F
<66F G
TRequest66G O
>66O P
(66P Q
T66Q R
context66S Z
,66Z [
TTrigger66\ d
trigger66e l
,66l m
TRequest66n v
request66w ~
,66~ 
CancellationToken
66� �
cancellationToken
66� �
=
66� �
default
66� �
(
66� �
CancellationToken
66� �
)
66� �
)
66� �
where77 
TRequest77 
:77 
class77 "
;77" #
Task@@ 
<@@ !
StateTransitionResult@@ "
<@@" #
TState@@# )
,@@) *
TTrigger@@+ 3
>@@3 4
>@@4 5
FireTriggerAsync@@6 F
(@@F G
T@@G H
context@@I P
,@@P Q
TTrigger@@R Z
trigger@@[ b
,@@b c
CancellationToken@@d u
cancellationToken	@@v �
=
@@� �
default
@@� �
(
@@� �
CancellationToken
@@� �
)
@@� �
)
@@� �
;
@@� �
boolBB 
	IsInStateBB 
(BB 
TBB 
contextBB  
,BB  !
TStateBB" (
stateBB) .
)BB. /
;BB/ 0
IStateMachineAsyncDD 
<DD 
TDD 
,DD 
TStateDD $
,DD$ %
TTriggerDD& .
>DD. /(
RegisterOnTransitionedActionDD0 L
(DDL M
ActionDDM S
<DDS T
TDDT U
,DDU V!
StateTransitionResultDDW l
<DDl m
TStateDDm s
,DDs t
TTriggerDDu }
>DD} ~
>DD~ !
onTransitionedEvent
DD� �
)
DD� �
;
DD� �
FuncFF 
<FF 
TFF 
,FF 
TStateFF 
>FF 
StateAccessorFF %
{FF& '
getFF( +
;FF+ ,
}FF- .
ActionGG 
<GG 
TGG 
,GG 
TStateGG 
>GG 
StateMutatorGG &
{GG' (
getGG) ,
;GG, -
}GG. /
}HH 
}II ��
TC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateConfiguration.cs
	namespace 	
NStateManager
 
{ 
public 

class 
StateConfiguration #
<# $
T$ %
,% &
TState' -
,- .
TTrigger/ 7
>7 8
:9 :"
StateConfigurationBase; Q
<Q R
TR S
,S T
TStateU [
,[ \
TTrigger] e
>e f
,f g(
IStateConfigurationInternal	h �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
where 
TState 
: 
IComparable "
{ 
private 
readonly 

Dictionary #
<# $
TState$ *
,* +
Action, 2
<2 3
T3 4
>4 5
>5 6&
_previousStateEntryActions7 Q
=R S
newT W

DictionaryX b
<b c
TStatec i
,i j
Actionk q
<q r
Tr s
>s t
>t u
(u v
)v w
;w x
private 
readonly 

Dictionary #
<# $
TState$ *
,* +
Action, 2
<2 3
T3 4
>4 5
>5 6!
_nextStateExitActions7 L
=M N
newO R

DictionaryS ]
<] ^
TState^ d
,d e
Actionf l
<l m
Tm n
>n o
>o p
(p q
)q r
;r s
private 
readonly 

Dictionary #
<# $
TTrigger$ ,
,, -
TriggerActionBase. ?
<? @
T@ A
,A B
TTriggerC K
>K L
>L M
_triggerActionsN ]
=^ _
new` c

Dictionaryd n
<n o
TTriggero w
,w x
TriggerActionBase	y �
<
� �
T
� �
,
� �
TTrigger
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
Action 
< 
T 
> 
_defaultEntryAction -
;- .
private   
Action   
<   
T   
>   
_defaultExitAction   ,
;  , -
private!! 
Action!! 
<!! 
T!! 
>!! 
_reentryAction!! (
;!!( )
private"" '
IStateConfigurationInternal"" +
<""+ ,
T"", -
,""- .
TState""/ 5
,""5 6
TTrigger""7 ?
>""? @
_superState""A L
;""L M
internal)) 
StateConfiguration)) #
())# $
TState))$ *
state))+ 0
,))0 1
IStateMachine))2 ?
<))? @
T))@ A
,))A B
TState))C I
,))I J
TTrigger))K S
>))S T
stateMachine))U a
)))a b
:** 
base** 
(** 
state** 
,** 
stateMachine** &
.**& '
StateAccessor**' 4
,**4 5
stateMachine**6 B
.**B C
StateMutator**C O
)**O P
{++ 	
_stateMachine,, 
=,, 
stateMachine,, (
;,,( )
}-- 	
public77 
IStateConfiguration77 "
<77" #
T77# $
,77$ %
TState77& ,
,77, -
TTrigger77. 6
>776 7$
AddAutoDynamicTransition778 P
(77P Q
TTrigger77Q Y
trigger77Z a
,77a b
Func77c g
<77g h
T77h i
,77i j
TState77k q
>77q r
function77s {
,77{ |
string	77} �
name
77� �
=
77� �
null
77� �
,
77� �
uint
77� �
priority
77� �
=
77� �
$num
77� �
)
77� �
{88 	
var99 
initialTransition99 !
=99" #"
StateTransitionFactory99$ :
<99: ;
T99; <
,99< =
TState99> D
,99D E
TTrigger99F N
>99N O
.99O P
GetStateTransition99P b
(99b c
_stateMachine99c p
,:: 
State:: 
,;; 
function;; 
,<< 
State<< 
,== 
name== 
,>> 
priority>> 
)>> 
;>> 
AddAutoTransition?? 
(?? 
trigger?? %
,??% &
initialTransition??' 8
)??8 9
;??9 :
returnAA 
thisAA 
;AA 
}BB 	
publicLL 
IStateConfigurationLL "
<LL" #
TLL# $
,LL$ %
TStateLL& ,
,LL, -
TTriggerLL. 6
>LL6 7$
AddAutoDynamicTransitionLL8 P
<LLP Q
TRequestLLQ Y
>LLY Z
(LLZ [
TTriggerLL[ c
triggerLLd k
,MM
 
FuncMM 
<MM 
TMM 
,MM 
TRequestMM 
,MM 
TStateMM $
>MM$ %
functionMM& .
,NN
 
stringNN 
nameNN 
=NN 
nullNN 
,OO
 
uintOO 
priorityOO 
=OO 
$numOO 
)OO 
wherePP 
TRequestPP 
:PP 
classPP "
{QQ 	
varRR 
initialTransitionRR !
=RR" #"
StateTransitionFactoryRR$ :
<RR: ;
TRR; <
,RR< =
TStateRR> D
,RRD E
TTriggerRRF N
>RRN O
.RRO P
GetStateTransitionRRP b
(RRb c
_stateMachineRRc p
,SS 
StateSS 
,TT 
functionTT 
,UU 
StateUU 
,VV 
nameVV 
,WW 
priorityWW 
)WW 
;WW 
AddAutoTransitionXX 
(XX 
triggerXX %
,XX% &
initialTransitionXX' 8
)XX8 9
;XX9 :
returnZZ 
thisZZ 
;ZZ 
}[[ 	
publicff 
IStateConfigurationff "
<ff" #
Tff# $
,ff$ %
TStateff& ,
,ff, -
TTriggerff. 6
>ff6 7%
AddAutoFallbackTransitionff8 Q
(ffQ R
TTriggerffR Z
triggerff[ b
,ffb c
TStateffd j
	tempStateffk t
,fft u
Funcffv z
<ffz {
Tff{ |
,ff| }
bool	ff~ �
>
ff� �
	condition
ff� �
,
ff� �
string
ff� �
name
ff� �
=
ff� �
null
ff� �
,
ff� �
uint
ff� �
priority
ff� �
=
ff� �
$num
ff� �
)
ff� �
{gg 	
ifhh 
(hh 
	conditionhh 
==hh 
nullhh !
)hh! "
{ii 
throwii 
newii !
ArgumentNullExceptionii -
(ii- .
nameofii. 4
(ii4 5
	conditionii5 >
)ii> ?
)ii? @
;ii@ A
}iiB C
varkk 
initialTransitionkk !
=kk" #"
StateTransitionFactorykk$ :
<kk: ;
Tkk; <
,kk< =
TStatekk> D
,kkD E
TTriggerkkF N
>kkN O
.kkO P
GetStateTransitionkkP b
(kkb c
_stateMachinekkc p
,ll 
	tempStatell 
,mm 
	conditionmm 
,nn 
namenn 
,oo 
priorityoo 
)oo 
;oo 
AddTransitionpp 
(pp 
triggerpp !
,pp! "
initialTransitionpp# 4
)pp4 5
;pp5 6
varrr #
tempStateAutoTransitionrr '
=rr( )"
StateTransitionFactoryrr* @
<rr@ A
TrrA B
,rrB C
TStaterrD J
,rrJ K
TTriggerrrL T
>rrT U
.rrU V
GetStateTransitionrrV h
(rrh i
_stateMachinerri v
,ss 

startStatess 
:ss 
Statess !
,tt 
triggerStatett 
:tt 
	tempStatett '
,uu 
toStateuu 
:uu 
Stateuu 
,vv 
	conditionvv 
:vv 
	conditionvv $
,ww 
nameww 
:ww 
nameww 
,xx 
priorityxx 
:xx 
priorityxx "
)xx" #
;xx# $'
AddOtherStateAutoTransitionyy '
(yy' (
	tempStateyy( 1
,yy1 2
triggeryy3 :
,yy: ;#
tempStateAutoTransitionyy< S
)yyS T
;yyT U
return{{ 
this{{ 
;{{ 
}|| 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7'
AddAutoFallbackTransition
��8 Q
<
��Q R
TRequest
��R Z
>
��Z [
(
��[ \
TTrigger
��\ d
trigger
��e l
,
��
 
TState
�� 
	tempState
�� 
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
bool
�� "
>
��" #
	condition
��$ -
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "
initialTransition
��# 4
)
��4 5
;
��5 6
var
�� "
otherStateTransition
�� $
=
��% &$
StateTransitionFactory
��' =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R
.
��R S 
GetStateTransition
��S e
(
��e f
_stateMachine
��f s
,
�� 
State
�� 
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� )
AddOtherStateAutoTransition
�� '
(
��' (
	tempState
��( 1
,
��1 2
trigger
��3 :
,
��: ;"
otherStateTransition
��< P
)
��P Q
;
��Q R
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7'
AddAutoFallbackTransition
��8 Q
(
��Q R
TTrigger
��R Z
trigger
��[ b
,
��
 
TState
�� 
	tempState
�� 
,
��
 
TState
�� 
previousState
��  
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
bool
�� 
>
�� 
	condition
�� #
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 

startState
�� 
:
�� 
previousState
�� )
,
�� 
triggerState
�� 
:
�� 
State
�� #
,
�� 
toState
�� 
:
�� 
	tempState
�� "
,
�� 
	condition
�� 
:
�� 
	condition
�� $
,
�� 
name
�� 
:
�� 
name
�� 
,
�� 
priority
�� 
:
�� 
priority
�� "
)
��" #
;
��# $
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "
initialTransition
��# 4
)
��4 5
;
��5 6
var
�� &
otherStateAutoTransition
�� (
=
��) *$
StateTransitionFactory
��+ A
<
��A B
T
��B C
,
��C D
TState
��E K
,
��K L
TTrigger
��M U
>
��U V
.
��V W 
GetStateTransition
��W i
(
��i j
_stateMachine
��j w
,
�� 

startState
�� 
:
�� 
State
�� !
,
�� 
triggerState
�� 
:
�� 
	tempState
�� '
,
�� 
toState
�� 
:
�� 
State
�� 
,
�� 
	condition
�� 
:
�� 
	condition
�� $
,
�� 
name
�� 
:
�� 
name
�� 
,
�� 
priority
�� 
:
�� 
priority
�� "
)
��" #
;
��# $)
AddOtherStateAutoTransition
�� '
(
��' (
	tempState
��( 1
,
��1 2
trigger
��3 :
,
��: ;&
otherStateAutoTransition
��< T
)
��T U
;
��U V
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7&
AddAutoForwardTransition
��8 P
(
��P Q
TTrigger
��Q Y
trigger
��Z a
,
��
 
TState
�� 
toState
�� 
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
bool
�� 
>
�� 
	condition
�� #
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
triggerState
�� 
:
�� 
State
�� #
,
�� 
toState
�� 
:
�� 
toState
��  
,
�� 
	condition
�� 
:
�� 
	condition
�� $
,
�� 
name
�� 
:
�� 
name
�� 
,
�� 
priority
�� 
:
�� 
priority
�� "
)
��" #
;
��# $
AddAutoTransition
�� 
(
�� 
trigger
�� %
,
��% &

transition
��' 1
)
��1 2
;
��2 3
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7&
AddAutoForwardTransition
��8 P
<
��P Q
TRequest
��Q Y
>
��Y Z
(
��Z [
TTrigger
��[ c
trigger
��d k
,
�� 
TState
�� 
toState
�� 
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
bool
��  $
>
��$ %
	condition
��& /
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
toState
�� 
,
�� 
	condition
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddAutoTransition
�� 
(
�� 
trigger
�� %
,
��% &

transition
��' 1
)
��1 2
;
��2 3
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7"
AddDynamicTransition
��8 L
(
��L M
TTrigger
��M U
trigger
��V ]
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TState
�� 
>
�� 
function
�� &
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
{
�� 	
if
�� 
(
�� 
function
�� 
==
�� 
null
��  
)
��  !
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
function
��5 =
)
��= >
)
��> ?
;
��? @
}
��A B
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
function
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7"
AddDynamicTransition
��8 L
<
��L M
TRequest
��M U
>
��U V
(
��V W
TTrigger
��W _
trigger
��` g
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
TState
��  &
>
��& '
function
��( 0
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
function
�� 
==
�� 
null
��  
)
��  !
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
function
��5 =
)
��= >
)
��> ?
;
��? @
}
��A B
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
function
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddTransition
��8 E
(
��E F
TTrigger
��F N
trigger
��O V
,
�� 
TState
�� 
toState
�� 
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
bool
�� 
>
�� 
	condition
�� %
=
��& '
null
��( ,
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
	condition
�� 
=
�� 
_
�� 
=>
�� 
true
�� #
;
��# $
}
��% &
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
toState
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddTransition
��8 E
<
��E F
TRequest
��F N
>
��N O
(
��O P
TTrigger
��P X
trigger
��Y `
,
�� 
TState
�� 
toState
�� 
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
bool
��  $
>
��$ %
	condition
��& /
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
toState
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddEntryAction
��8 F
(
��F G
Action
��G M
<
��M N
T
��N O
>
��O P
action
��Q W
)
��W X
{
�� 	
if
�� 
(
�� !
_defaultEntryAction
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 a
)
��a b
;
��b c
}
��d e!
_defaultEntryAction
�� 
=
��  !
action
��" (
??
��) +
throw
��, 1
new
��2 5#
ArgumentNullException
��6 K
(
��K L
nameof
��L R
(
��R S
action
��S Y
)
��Y Z
)
��Z [
;
��[ \
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddReentryAction
��8 H
(
��H I
Action
��I O
<
��O P
T
��P Q
>
��Q R
action
��S Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
_reentryAction
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 Y
)
��Y Z
;
��Z [
}
��\ ]
_reentryAction
�� 
=
�� 
action
�� #
??
��$ &
throw
��' ,
new
��- 0#
ArgumentNullException
��1 F
(
��F G
nameof
��G M
(
��M N
action
��N T
)
��T U
)
��U V
;
��V W
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddEntryAction
��8 F
(
��F G
Action
��G M
<
��M N
T
��N O
>
��O P
action
��Q W
,
��W X
TState
��Y _
previousState
��` m
)
��m n
{
�� 	
if
�� 
(
�� 
action
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
action
��5 ;
)
��; <
)
��< =
;
��= >
}
��? @
if
�� 
(
�� (
_previousStateEntryActions
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
previousState
��7 D
)
��D E
)
��E F
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 g
)
��g h
;
��h i
}
��j k(
_previousStateEntryActions
�� &
.
��& '
Add
��' *
(
��* +
previousState
��+ 8
,
��8 9
action
��: @
)
��@ A
;
��A B
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddExitAction
��8 E
(
��E F
Action
��F L
<
��L M
T
��M N
>
��N O
action
��P V
)
��V W
{
�� 	
if
�� 
(
��  
_defaultExitAction
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 T
)
��T U
;
��U V
}
��W X 
_defaultExitAction
�� 
=
��  
action
��! '
??
��( *
throw
��+ 0
new
��1 4#
ArgumentNullException
��5 J
(
��J K
nameof
��K Q
(
��Q R
action
��R X
)
��X Y
)
��Y Z
;
��Z [
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddExitAction
��8 E
(
��E F
Action
��F L
<
��L M
T
��M N
>
��N O
action
��P V
,
��V W
TState
��X ^
	nextState
��_ h
)
��h i
{
�� 	
if
�� 
(
�� 
action
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
action
��5 ;
)
��; <
)
��< =
;
��= >
}
��> ?
if
�� 
(
�� #
_nextStateExitActions
�� %
.
��% &
ContainsKey
��& 1
(
��1 2
	nextState
��2 ;
)
��; <
)
��< =
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4)
Exit action for next state 
��4 O
{
��O P
	nextState
��P Y
}
��Y Z
 already set.
��Z g
"
��g h
)
��h i
;
��i j
}
��k l#
_nextStateExitActions
�� !
.
��! "
Add
��" %
(
��% &
	nextState
��& /
,
��/ 0
action
��1 7
)
��7 8
;
��8 9
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddSuperState
�� !
(
��! ")
IStateConfigurationInternal
��" =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R%
superStateConfiguration
��S j
)
��j k
{
�� 	
if
�� 
(
�� 
	IsInState
�� 
(
�� %
superStateConfiguration
�� 1
.
��1 2
State
��2 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 3
(
��3 4
$"
��4 6
{
��6 7
State
��7 <
}
��< =)
 is already a sub-state of 
��= X
{
��X Y%
superStateConfiguration
��Y p
.
��p q
State
��q v
}
��v w
.
��w x
"
��x y
)
��y z
;
��z {
}
��| }
if
�� 
(
�� %
superStateConfiguration
�� '
.
��' (
	IsInState
��( 1
(
��1 2
State
��2 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4
{
��4 5%
superStateConfiguration
��5 L
.
��L M
State
��M R
}
��R S)
 is already a sub-state of 
��S n
{
��n o
State
��o t
}
��t u
.
��u v
"
��v w
)
��w x
;
��x y
}
��z {
_superState
�� 
=
�� %
superStateConfiguration
�� 1
;
��1 2
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddTriggerAction
��8 H
(
��H I
TTrigger
��I Q
trigger
��R Y
,
��Y Z
Action
��[ a
<
��a b
T
��b c
>
��c d
action
��e k
)
��k l
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 41
#Only one action is allowed for the 
��4 W
{
��W X
trigger
��X _
}
��_ `
	 trigger.
��` i
"
��i j
)
��j k
;
��k l
}
��m n
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
AddTriggerAction
��8 H
<
��H I
TRequest
��I Q
>
��Q R
(
��R S
TTrigger
��S [
trigger
��\ c
,
��c d
Action
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
>
�� 
action
��  &
)
��& '
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4-
Only one action is allowed for 
��4 S
{
��S T
trigger
��T [
}
��[ \
	 trigger.
��\ e
"
��e f
)
��f g
;
��g h
}
��i j
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� #
StateTransitionResult
�� $
<
��$ %
TState
��% +
,
��+ ,
TTrigger
��- 5
>
��5 6#
ExecuteAutoTransition
��7 L
(
��L M!
ExecutionParameters
��M `
<
��` a
T
��a b
,
��b c
TTrigger
��d l
>
��l m

parameters
��n x
,
�� #
StateTransitionResult
�� #
<
��# $
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
currentResult
��6 C
)
��C D
{
�� 	
if
�� 
(
�� 
AutoTransitions
�� 
.
��  
TryGetValue
��  +
(
��+ ,

parameters
��, 6
.
��6 7
Trigger
��7 >
,
��> ?
out
��@ C
var
��D G
autoTransitions
��H W
)
��W X
)
��X Y
{
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� '
in
��( *
autoTransitions
��+ :
.
��: ;
OrderBy
��; B
(
��B C
t
��C D
=>
��E G
t
��H I
.
��I J
Priority
��J R
)
��R S
)
��S T
{
�� 
var
�� 
localResult
�� #
=
��$ %

transition
��& 0
.
��0 1
Execute
��1 8
(
��8 9

parameters
��9 C
,
��C D
currentResult
��E R
)
��R S
;
��S T
if
�� 
(
�� 
localResult
�� #
.
��# $
WasTransitioned
��$ 3
)
��3 4
{
�� 
return
�� 
localResult
�� (
;
��( )
}
��* +
}
�� 
}
�� 
return
�� 
_superState
�� 
!=
�� !
null
��" &
?
�� 
_superState
�� 
.
�� #
ExecuteAutoTransition
�� 3
(
��3 4

parameters
��4 >
,
��> ?
currentResult
��@ M
)
��M N
:
�� 
new
�� #
StateTransitionResult
�� +
<
��+ ,
TState
��, 2
,
��2 3
TTrigger
��4 <
>
��< =
(
��= >

parameters
��> H
.
��H I
Trigger
��I P
,
�� 
currentResult
�� !
.
��! "
CurrentState
��" .
,
�� 
currentResult
�� !
.
��! "
CurrentState
��" .
,
�� 
currentResult
�� !
.
��! "
CurrentState
��" .
,
�� 
string
�� 
.
�� 
Empty
��  
,
�� 
transitionDefined
�� %
:
��% &
false
��' ,
,
�� 
conditionMet
��  
:
��  !
false
��" '
)
��' (
;
��( )
}
�� 	
public
�� 
void
��  
ExecuteEntryAction
�� &
(
��& '
T
��' (
context
��) 0
,
��0 1#
StateTransitionResult
��2 G
<
��G H
TState
��H N
,
��N O
TTrigger
��P X
>
��X Y
currentResult
��Z g
)
��g h
{
�� 	
if
�� 
(
�� 
_superState
�� 
!=
�� 
null
�� #
&&
��$ &
!
��' (
	IsInState
��( 1
(
��1 2
currentResult
��2 ?
.
��? @
CurrentState
��@ L
)
��L M
)
��M N
{
�� 
_superState
�� 
.
��  
ExecuteEntryAction
�� ,
(
��, -
context
��- 4
,
��4 5
currentResult
��6 C
)
��C D
;
��D E
}
��F G
if
�� 
(
�� (
_previousStateEntryActions
�� *
.
��* +
TryGetValue
��+ 6
(
��6 7
currentResult
��7 D
.
��D E
PreviousState
��E R
,
��R S
out
��T W
var
��X [
action
��\ b
)
��b c
)
��c d
{
�� 
action
�� 
.
�� 
Invoke
�� 
(
�� 
context
�� #
)
��# $
;
��$ %
}
��& '!
_defaultEntryAction
�� 
?
��  
.
��  !
Invoke
��! '
(
��' (
context
��( /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
void
�� 
ExecuteExitAction
�� %
(
��% &
T
��& '
context
��( /
,
��/ 0#
StateTransitionResult
��1 F
<
��F G
TState
��G M
,
��M N
TTrigger
��O W
>
��W X
currentResult
��Y f
)
��f g
{
�� 	
if
�� 
(
�� #
_nextStateExitActions
�� %
.
��% &
TryGetValue
��& 1
(
��1 2
currentResult
��2 ?
.
��? @
CurrentState
��@ L
,
��L M
out
��N Q
var
��R U
action
��V \
)
��\ ]
)
��] ^
{
�� 
action
�� 
.
�� 
Invoke
�� 
(
�� 
context
�� #
)
��# $
;
��$ %
}
��& ' 
_defaultExitAction
�� 
?
�� 
.
��  
Invoke
��  &
(
��& '
context
��' .
)
��. /
;
��/ 0
if
�� 
(
�� 
_superState
�� 
!=
�� 
null
�� #
&&
��$ &
!
��' (
	IsInState
��( 1
(
��1 2
currentResult
��2 ?
.
��? @
CurrentState
��@ L
)
��L M
)
��M N
{
�� 
_superState
�� 
.
�� 
ExecuteExitAction
�� +
(
��+ ,
context
��, 3
,
��3 4
currentResult
��5 B
)
��B C
;
��C D
}
��E F
}
�� 	
public
�� 
void
�� "
ExecuteReentryAction
�� (
(
��( )
T
��) *
context
��+ 2
,
��2 3#
StateTransitionResult
��4 I
<
��I J
TState
��J P
,
��P Q
TTrigger
��R Z
>
��Z [
currentResult
��\ i
)
��i j
{
�� 	
_superState
�� 
?
�� 
.
�� "
ExecuteReentryAction
�� -
(
��- .
context
��. 5
,
��5 6
currentResult
��7 D
)
��D E
;
��E F
_reentryAction
�� 
?
�� 
.
�� 
Invoke
�� "
(
��" #
context
��# *
)
��* +
;
��+ ,
}
�� 	
private
�� 
void
�� )
AddOtherStateAutoTransition
�� 0
(
��0 1
TState
��1 7

otherState
��8 B
,
��
 
TTrigger
�� 
trigger
�� 
,
��
 !
StateTransitionBase
�� 
<
��  
T
��  !
,
��! "
TState
��# )
,
��) *
TTrigger
��+ 3
>
��3 4

transition
��5 ?
)
��? @
{
�� 	
var
�� 
otherStateConfig
��  
=
��! ")
GetTargetStateConfiguration
��# >
(
��> ?

otherState
��? I
)
��I J
;
��J K
otherStateConfig
�� 
.
�� 
AddAutoTransition
�� .
(
��. /
trigger
��/ 6
,
��6 7

transition
��8 B
)
��B C
;
��C D
}
�� 	
private
�� )
IStateConfigurationInternal
�� +
<
��+ ,
T
��, -
,
��- .
TState
��/ 5
,
��5 6
TTrigger
��7 ?
>
��? @)
GetTargetStateConfiguration
��A \
(
��\ ]
TState
��] c
targetState
��d o
)
��o p
{
�� 	
return
�� 
_stateMachine
��  
.
��  !
ConfigureState
��! /
(
��/ 0
targetState
��0 ;
)
��; <
as
��= ?)
IStateConfigurationInternal
��@ [
<
��[ \
T
��\ ]
,
��] ^
TState
��_ e
,
��e f
TTrigger
��g o
>
��o p
;
��p q
}
�� 	
public
�� #
StateTransitionResult
�� $
<
��$ %
TState
��% +
,
��+ ,
TTrigger
��- 5
>
��5 6
FireTrigger
��7 B
(
��B C!
ExecutionParameters
��C V
<
��V W
T
��W X
,
��X Y
TTrigger
��Z b
>
��b c

parameters
��d n
)
��n o
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
TryGetValue
��  +
(
��+ ,

parameters
��, 6
.
��6 7
Trigger
��7 >
,
��> ?
out
��@ C
var
��D G
triggerAction
��H U
)
��U V
)
��V W
{
�� 
triggerAction
�� 
.
�� 
Execute
�� #
(
��# $

parameters
��$ .
)
��. /
;
��/ 0
}
��1 2
var
�� 
result
�� 
=
�� 
FireTriggerPrim
�� (
(
��( )

parameters
��) 3
)
��3 4
;
��4 5
if
�� 
(
�� 
!
�� 
(
�� 
result
�� 
?
�� 
.
�� 
WasTransitioned
�� )
??
��* ,
false
��- 2
)
��2 3
&&
��4 6
_superState
��7 B
!=
��C E
null
��F J
)
��J K
{
�� 
result
�� 
=
�� 
_superState
�� "
.
��" #
FireTrigger
��# .
(
��. /

parameters
��/ 9
)
��9 :
;
��: ;
}
��< =
else
�� 
{
�� 
var
�� 

startState
�� 
=
��  
StateAccessor
��! .
(
��. /

parameters
��/ 9
.
��9 :
Context
��: A
)
��A B
;
��B C
result
�� 
=
�� 
result
�� 
??
��  "
new
�� #
StateTransitionResult
�� -
<
��- .
TState
��. 4
,
��4 5
TTrigger
��6 >
>
��> ?
(
��? @

parameters
��@ J
.
��J K
Trigger
��K R
,
�� 

startState
�� $
,
�� 

startState
�� $
,
�� 

startState
�� $
,
�� 
string
��  
.
��  !
Empty
��! &
,
�� 
transitionDefined
�� +
:
��+ ,
false
��- 2
)
��2 3
;
��3 4
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
	IsInState
�� 
(
�� 
TState
�� $
state
��% *
)
��* +
{
�� 	
if
�� 
(
�� 
state
�� 
.
�� 
	CompareTo
�� 
(
��  
State
��  %
)
��% &
==
��' )
$num
��* +
)
��+ ,
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
_superState
�� 
?
�� 
.
��  
	IsInState
��  )
(
��) *
state
��* /
)
��/ 0
??
��1 3
false
��4 9
;
��9 :
}
�� 	
public
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
MakeSubStateOf
��8 F
(
��F G!
IStateConfiguration
��G Z
<
��Z [
T
��[ \
,
��\ ]
TState
��^ d
,
��d e
TTrigger
��f n
>
��n o&
superStateConfiguration��p �
)��� �
{
�� 	
AddSuperState
�� 
(
�� %
superStateConfiguration
�� 1
as
��2 4)
IStateConfigurationInternal
��5 P
<
��P Q
T
��Q R
,
��R S
TState
��T Z
,
��Z [
TTrigger
��\ d
>
��d e
)
��e f
;
��f g
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
YC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateConfigurationAsync.cs
	namespace 	
NStateManager
 
{ 
public 

class #
StateConfigurationAsync (
<( )
T) *
,* +
TState, 2
,2 3
TTrigger4 <
>< =
: 	"
StateConfigurationBase
  
<  !
T! "
," #
TState$ *
,* +
TTrigger, 4
>4 5
,5 6,
 IStateConfigurationAsyncInternal7 W
<W X
TX Y
,Y Z
TState[ a
,a b
TTriggerc k
>k l
where 
TState 
: 
IComparable "
{ 
private 
readonly 

Dictionary #
<# $
TState$ *
,* +
Func, 0
<0 1
T1 2
,2 3
CancellationToken4 E
,E F
TaskG K
>K L
>L M&
_previousStateEntryActionsN h
=i j
newk n

Dictionaryo y
<y z
TState	z �
,
� �
Func
� �
<
� �
T
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 

Dictionary #
<# $
TState$ *
,* +
Func, 0
<0 1
T1 2
,2 3
CancellationToken4 E
,E F
TaskG K
>K L
>L M!
_nextStateExitActionsN c
=d e
newf i

Dictionaryj t
<t u
TStateu {
,{ |
Func	} �
<
� �
T
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private   
readonly   

Dictionary   #
<  # $
TTrigger  $ ,
,  , -
FunctionActionBase  . @
<  @ A
T  A B
>  B C
>  C D
_triggerActions  E T
=  U V
new  W Z

Dictionary  [ e
<  e f
TTrigger  f n
,  n o
FunctionActionBase	  p �
<
  � �
T
  � �
>
  � �
>
  � �
(
  � �
)
  � �
;
  � �
private!! 
Func!! 
<!! 
T!! 
,!! 
CancellationToken!! )
,!!) *
Task!!+ /
>!!/ 0
_defaultEntryAction!!1 D
;!!D E
private"" 
Func"" 
<"" 
T"" 
,"" 
CancellationToken"" )
,"") *
Task""+ /
>""/ 0
_defaultExitAction""1 C
;""C D
private## 
Func## 
<## 
T## 
,## 
CancellationToken## )
,##) *
Task##+ /
>##/ 0
_reentryAction##1 ?
;##? @
private$$ ,
 IStateConfigurationAsyncInternal$$ 0
<$$0 1
T$$1 2
,$$2 3
TState$$4 :
,$$: ;
TTrigger$$< D
>$$D E
_superState$$F Q
;$$Q R
internal++ #
StateConfigurationAsync++ (
(++( )
TState++) /
state++0 5
,++5 6
IStateMachineAsync++7 I
<++I J
T++J K
,++K L
TState++M S
,++S T
TTrigger++U ]
>++] ^
stateMachine++_ k
)++k l
:,, 
base,, 
(,, 
state,, 
,,, 
stateMachine,, &
.,,& '
StateAccessor,,' 4
,,,4 5
stateMachine,,6 B
.,,B C
StateMutator,,C O
),,O P
{-- 	
_stateMachine.. 
=.. 
stateMachine.. (
;..( )
}// 	
public99 $
IStateConfigurationAsync99 '
<99' (
T99( )
,99) *
TState99+ 1
,991 2
TTrigger993 ;
>99; <$
AddAutoDynamicTransition99= U
(99U V
TTrigger99V ^
trigger99_ f
,99f g
Func99h l
<99l m
T99m n
,99n o
TState99p v
>99v w
function	99x �
,
99� �
string
99� �
name
99� �
=
99� �
null
99� �
,
99� �
uint
99� �
priority
99� �
=
99� �
$num
99� �
)
99� �
{:: 	
var;; 
initialTransition;; !
=;;" #"
StateTransitionFactory;;$ :
<;;: ;
T;;; <
,;;< =
TState;;> D
,;;D E
TTrigger;;F N
>;;N O
.;;O P
GetStateTransition;;P b
(;;b c
_stateMachine;;c p
,<< 
State<< 
,== 
function== 
,>> 
State>> 
,?? 
name?? 
,@@ 
priority@@ 
)@@ 
;@@ 
AddAutoTransitionAA 
(AA 
triggerAA %
,AA% &
initialTransitionAA' 8
)AA8 9
;AA9 :
returnCC 
thisCC 
;CC 
}DD 	
publicFF $
IStateConfigurationAsyncFF '
<FF' (
TFF( )
,FF) *
TStateFF+ 1
,FF1 2
TTriggerFF3 ;
>FF; <$
AddAutoDynamicTransitionFF= U
<FFU V
TRequestFFV ^
>FF^ _
(FF_ `
TTriggerFF` h
triggerFFi p
,GG
 
FuncGG 
<GG 
TGG 
,GG 
TRequestGG 
,GG 
TStateGG $
>GG$ %
functionGG& .
,HH
 
stringHH 
nameHH 
=HH 
nullHH 
,II
 
uintII 
priorityII 
=II 
$numII 
)II 
whereJJ 
TRequestJJ 
:JJ 
classJJ "
{KK 	
varLL 
initialTransitionLL !
=LL" #"
StateTransitionFactoryLL$ :
<LL: ;
TLL; <
,LL< =
TStateLL> D
,LLD E
TTriggerLLF N
>LLN O
.LLO P
GetStateTransitionLLP b
(LLb c
_stateMachineLLc p
,MM 
StateMM 
,NN 
functionNN 
,OO 
StateOO 
,PP 
namePP 
,QQ 
priorityQQ 
)QQ 
;QQ 
AddAutoTransitionRR 
(RR 
triggerRR %
,RR% &
initialTransitionRR' 8
)RR8 9
;RR9 :
returnTT 
thisTT 
;TT 
}UU 	
public`` $
IStateConfigurationAsync`` '
<``' (
T``( )
,``) *
TState``+ 1
,``1 2
TTrigger``3 ;
>``; <$
AddAutoForwardTransition``= U
(``U V
TTrigger``V ^
trigger``_ f
,aa
 
TStateaa 
toStateaa 
,bb
 
Funcbb 
<bb 
Tbb 
,bb 
CancellationTokenbb %
,bb% &
Taskbb' +
<bb+ ,
boolbb, 0
>bb0 1
>bb1 2
	conditionbb3 <
,cc
 
stringcc 
namecc 
=cc 
nullcc 
,dd
 
uintdd 
prioritydd 
=dd 
$numdd 
)dd 
{ee 	
ifff 
(ff 
	conditionff 
==ff 
nullff !
)ff! "
{gg 
throwgg 
newgg !
ArgumentNullExceptiongg -
(gg- .
nameofgg. 4
(gg4 5
	conditiongg5 >
)gg> ?
)gg? @
;gg@ A
}ggB C
varii 

transitionii 
=ii "
StateTransitionFactoryii 3
<ii3 4
Tii4 5
,ii5 6
TStateii7 =
,ii= >
TTriggerii? G
>iiG H
.iiH I
GetStateTransitioniiI [
(ii[ \
_stateMachineii\ i
,jj 
triggerStatejj 
:jj 
Statejj #
,kk 
toStatekk 
:kk 
toStatekk  
,ll 
conditionAsyncll 
:ll 
	conditionll  )
,mm 
namemm 
:mm 
namemm 
,nn 
prioritynn 
:nn 
prioritynn "
)nn" #
;nn# $
AddAutoTransitionoo 
(oo 
triggeroo %
,oo% &

transitionoo' 1
)oo1 2
;oo2 3
returnqq 
thisqq 
;qq 
}rr 	
public~~ $
IStateConfigurationAsync~~ '
<~~' (
T~~( )
,~~) *
TState~~+ 1
,~~1 2
TTrigger~~3 ;
>~~; <$
AddAutoForwardTransition~~= U
<~~U V
TRequest~~V ^
>~~^ _
(~~_ `
TTrigger~~` h
trigger~~i p
,
 
TState 
toState 
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
CancellationToken
�� /
,
��/ 0
Task
��1 5
<
��5 6
bool
��6 :
>
��: ;
>
��; <
	condition
��= F
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
	condition
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddAutoTransition
�� 
(
�� 
trigger
�� %
,
��% &

transition
��' 1
)
��1 2
;
��2 3
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <"
AddDynamicTransition
��= Q
(
��Q R
TTrigger
��R Z
trigger
��[ b
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TState
�� 
>
�� 
stateFunction
�� +
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
{
�� 	
if
�� 
(
�� 
stateFunction
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
stateFunction
��5 B
)
��B C
)
��C D
;
��D E
}
��F G
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
stateFunction
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <"
AddDynamicTransition
��= Q
<
��Q R
TRequest
��R Z
>
��Z [
(
��[ \
TTrigger
��\ d
trigger
��e l
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
TState
��  &
>
��& '
stateFunction
��( 5
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
stateFunction
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
stateFunction
��5 B
)
��B C
)
��C D
;
��D E
}
��F G
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
stateFunction
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddEntryAction
��= K
(
��K L
Func
��L P
<
��P Q
T
��Q R
,
��R S
CancellationToken
��T e
,
��e f
Task
��g k
>
��k l
action
��m s
)
��s t
{
�� 	
if
�� 
(
�� !
_defaultEntryAction
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 a
)
��a b
;
��b c
}
��d e!
_defaultEntryAction
�� 
=
��  !
action
��" (
??
��) +
throw
��, 1
new
��2 5#
ArgumentNullException
��6 K
(
��K L
nameof
��L R
(
��R S
action
��S Y
)
��Y Z
)
��Z [
;
��[ \
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddEntryAction
��= K
(
��K L
Func
��L P
<
��P Q
T
��Q R
,
��R S
CancellationToken
��T e
,
��e f
Task
��g k
>
��k l
action
��m s
,
��s t
TState
��u {
previousState��| �
)��� �
{
�� 	
if
�� 
(
�� 
action
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
action
��5 ;
)
��; <
)
��< =
;
��= >
}
��? @
if
�� 
(
�� (
_previousStateEntryActions
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
previousState
��7 D
)
��D E
)
��E F
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 g
)
��g h
;
��h i
}
��j k(
_previousStateEntryActions
�� &
.
��& '
Add
��' *
(
��* +
previousState
��+ 8
,
��8 9
action
��: @
)
��@ A
;
��A B
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddExitAction
��= J
(
��J K
Func
��K O
<
��O P
T
��P Q
,
��Q R
CancellationToken
��S d
,
��d e
Task
��f j
>
��j k
action
��l r
)
��r s
{
�� 	
if
�� 
(
��  
_defaultExitAction
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 T
)
��T U
;
��U V
}
��W X 
_defaultExitAction
�� 
=
��  
action
��! '
??
��( *
throw
��+ 0
new
��1 4#
ArgumentNullException
��5 J
(
��J K
nameof
��K Q
(
��Q R
action
��R X
)
��X Y
)
��Y Z
;
��Z [
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddExitAction
��= J
(
��J K
Func
��K O
<
��O P
T
��P Q
,
��Q R
CancellationToken
��S d
,
��d e
Task
��f j
>
��j k
action
��l r
,
��r s
TState
��t z
	nextState��{ �
)��� �
{
�� 	
if
�� 
(
�� 
action
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	nextState
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
if
�� 
(
�� #
_nextStateExitActions
�� %
.
��% &
ContainsKey
��& 1
(
��1 2
	nextState
��2 ;
)
��; <
)
��< =
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4)
Exit action with nextState 
��4 O
{
��O P
	nextState
��P Y
}
��Y Z
 already set.
��Z g
"
��g h
)
��h i
;
��i j
}
��k l#
_nextStateExitActions
�� !
.
��! "
Add
��" %
(
��% &
	nextState
��& /
,
��/ 0
action
��1 7
)
��7 8
;
��8 9
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <-
AddAutoForwardDynamicTransition
��= \
(
��\ ]
TTrigger
��] e
trigger
��f m
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TState
�� 
>
�� 
function
�� $
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
{
�� 	
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 
State
�� 
,
�� 
function
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddAutoTransition
�� 
(
�� 
trigger
�� %
,
��% &
initialTransition
��' 8
)
��8 9
;
��9 :
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <-
AddAutoForwardDynamicTransition
��= \
<
��\ ]
TRequest
��] e
>
��e f
(
��f g
TTrigger
��g o
trigger
��p w
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
TState
�� $
>
��$ %
function
��& .
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 
State
�� 
,
�� 
function
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddAutoTransition
�� 
(
�� 
trigger
�� %
,
��% &
initialTransition
��' 8
)
��8 9
;
��9 :
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <'
AddAutoFallbackTransition
��= V
(
��V W
TTrigger
��W _
trigger
��` g
,
��
 
TState
�� 
	tempState
�� 
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
CancellationToken
�� %
,
��% &
Task
��' +
<
��+ ,
bool
��, 0
>
��0 1
>
��1 2
	condition
��3 <
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "
initialTransition
��# 4
)
��4 5
;
��5 6
var
�� "
otherStateTransition
�� $
=
��% &$
StateTransitionFactory
��' =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R
.
��R S 
GetStateTransition
��S e
(
��e f
_stateMachine
��f s
,
�� 
State
�� 
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� )
AddOtherStateAutoTransition
�� '
(
��' (
	tempState
��( 1
,
��1 2
trigger
��3 :
,
��: ;"
otherStateTransition
��< P
)
��P Q
;
��Q R
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <'
AddAutoFallbackTransition
��= V
<
��V W
TRequest
��W _
>
��_ `
(
��` a
TTrigger
��a i
trigger
��j q
,
��
 
TState
�� 
	tempState
�� 
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
CancellationToken
�� /
,
��/ 0
Task
��1 5
<
��5 6
bool
��6 :
>
��: ;
>
��; <
	condition
��= F
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
var
�� 
initialTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
.
��O P 
GetStateTransition
��P b
(
��b c
_stateMachine
��c p
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "
initialTransition
��# 4
)
��4 5
;
��5 6
var
�� "
otherStateTransition
�� $
=
��% &$
StateTransitionFactory
��' =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R
.
��R S 
GetStateTransition
��S e
(
��e f
_stateMachine
��f s
,
�� 
State
�� 
,
�� 
	tempState
�� 
,
�� 
	condition
�� 
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� )
AddOtherStateAutoTransition
�� '
(
��' (
	tempState
��( 1
,
��1 2
trigger
��3 :
,
��: ;"
otherStateTransition
��< P
)
��P Q
;
��Q R
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddReentryAction
��= M
(
��M N
Func
��N R
<
��R S
T
��S T
,
��T U
CancellationToken
��V g
,
��g h
Task
��i m
>
��m n
action
��o u
)
��u v
{
�� 	
if
�� 
(
�� 
_reentryAction
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$str
��2 Y
)
��Y Z
;
��Z [
}
��\ ]
_reentryAction
�� 
=
�� 
action
�� #
??
��$ &
throw
��' ,
new
��- 0#
ArgumentNullException
��1 F
(
��F G
nameof
��G M
(
��M N
action
��N T
)
��T U
)
��U V
;
��V W
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddSuperState
�� !
(
��! ".
 IStateConfigurationAsyncInternal
��" B
<
��B C
T
��C D
,
��D E
TState
��F L
,
��L M
TTrigger
��N V
>
��V W%
superStateConfiguration
��X o
)
��o p
{
�� 	
if
�� 
(
�� 
	IsInState
�� 
(
�� %
superStateConfiguration
�� 1
.
��1 2
State
��2 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 3
(
��3 4
$"
��4 6
{
��6 7
State
��7 <
}
��< =)
 is already a sub-state of 
��= X
{
��X Y%
superStateConfiguration
��Y p
.
��p q
State
��q v
}
��v w
.
��w x
"
��x y
)
��y z
;
��z {
}
��| }
if
�� 
(
�� %
superStateConfiguration
�� '
.
��' (
	IsInState
��( 1
(
��1 2
State
��2 7
)
��7 8
)
��8 9
{
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 3
(
��3 4
$"
��4 6
{
��6 7%
superStateConfiguration
��7 N
.
��N O
State
��O T
}
��T U)
 is already a sub-state of 
��U p
{
��p q
State
��q v
}
��v w
.
��w x
"
��x y
)
��y z
;
��z {
}
��| }
_superState
�� 
=
�� %
superStateConfiguration
�� 1
;
��1 2
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddTransition
��= J
(
��J K
TTrigger
��K S
trigger
��T [
,
�� 
TState
�� 
toState
�� 
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
CancellationToken
�� '
,
��' (
Task
��) -
<
��- .
bool
��. 2
>
��2 3
>
��3 4
conditionAsync
��5 C
=
��D E
null
��F J
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
{
�� 	
if
�� 
(
�� 
conditionAsync
�� 
==
�� !
null
��" &
)
��& '
{
�� 
conditionAsync
�� 
=
�� 
(
��  
_
��  !
,
��! "
ct
��# %
)
��% &
=>
��' )
Task
��* .
.
��. /

FromResult
��/ 9
(
��9 :
result
��: @
:
��@ A
true
��B F
)
��F G
;
��G H
}
��I J
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
toState
�� 
,
�� 
conditionAsync
��  
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddTransition
��= J
<
��J K
TRequest
��K S
>
��S T
(
��T U
TTrigger
��U ]
trigger
��^ e
,
�� 
TState
�� 
toState
�� 
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
CancellationToken
��  1
,
��1 2
Task
��3 7
<
��7 8
bool
��8 <
>
��< =
>
��= >
conditionAsync
��? M
,
�� 
string
�� 
name
�� 
=
�� 
null
��  
,
�� 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
��  
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
if
�� 
(
�� 
conditionAsync
�� 
==
�� !
null
��" &
)
��& '
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� -
(
��- .
nameof
��. 4
(
��4 5
conditionAsync
��5 C
)
��C D
)
��D E
;
��E F
}
��G H
var
�� 

transition
�� 
=
�� $
StateTransitionFactory
�� 3
<
��3 4
T
��4 5
,
��5 6
TState
��7 =
,
��= >
TTrigger
��? G
>
��G H
.
��H I 
GetStateTransition
��I [
(
��[ \
_stateMachine
��\ i
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
conditionAsync
��  
,
�� 
State
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
AddTransition
�� 
(
�� 
trigger
�� !
,
��! "

transition
��# -
)
��- .
;
��. /
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddTriggerAction
��= M
(
��M N
TTrigger
��N V
trigger
��W ^
,
��^ _
Func
��` d
<
��d e
T
��e f
,
��f g
CancellationToken
��h y
,
��y z
Task
��{ 
>�� �
action��� �
)��� �
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4-
Only one action is allowed for 
��4 S
{
��S T
trigger
��T [
}
��[ \
	 trigger.
��\ e
"
��e f
)
��f g
;
��g h
}
��i j
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
AddTriggerAction
��= M
<
��M N
TRequest
��N V
>
��V W
(
��W X
TTrigger
��X `
trigger
��a h
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
CancellationToken
�� /
,
��/ 0
Task
��1 5
>
��5 6
action
��7 =
)
��= >
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4-
Only one action is allowed for 
��4 S
{
��S T
trigger
��T [
}
��[ \
	 trigger.
��\ e
"
��e f
)
��f g
;
��g h
}
��i j
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� /
<
��/ 0
TState
��0 6
,
��6 7
TTrigger
��8 @
>
��@ A
>
��A B(
ExecuteAutoTransitionAsync
��C ]
(
��] ^!
ExecutionParameters
��^ q
<
��q r
T
��r s
,
��s t
TTrigger
��u }
>
��} ~

parameters�� �
,
�� #
StateTransitionResult
�� #
<
��# $
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
currentResult
��6 C
)
��C D
{
�� 	
if
�� 
(
�� 
AutoTransitions
�� 
.
��  
TryGetValue
��  +
(
��+ ,

parameters
��, 6
.
��6 7
Trigger
��7 >
,
��> ?
out
��@ C
var
��D G 
triggerTransitions
��H Z
)
��Z [
)
��[ \
{
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� '
in
��( * 
triggerTransitions
��+ =
.
��= >
OrderBy
��> E
(
��E F
t
��F G
=>
��H J
t
��K L
.
��L M
Priority
��M U
)
��U V
)
��V W
{
�� 
var
�� 
localResult
�� #
=
��$ %
await
��& +

transition
��, 6
.
��6 7
ExecuteAsync
��7 C
(
��C D

parameters
��D N
,
��N O
currentResult
��P ]
)
��] ^
.
�� 
ConfigureAwait
�� &
(
��& ''
continueOnCapturedContext
��' @
:
��@ A
false
��B G
)
��G H
;
��H I
if
�� 
(
�� 
localResult
�� #
.
��# $
WasTransitioned
��$ 3
)
��3 4
{
�� 
return
�� 
localResult
�� (
;
��( )
}
��* +
}
�� 
}
�� 
return
�� 
_superState
�� 
!=
�� !
null
��" &
?
�� 
await
�� 
_superState
�� #
.
��# $(
ExecuteAutoTransitionAsync
��$ >
(
��> ?

parameters
��? I
,
��I J
currentResult
��K X
)
��X Y
.
��Y Z
ConfigureAwait
��Z h
(
��h i(
continueOnCapturedContext��i �
:��� �
false��� �
)��� �
:
�� 
new
�� #
StateTransitionResult
�� +
<
��+ ,
TState
��, 2
,
��2 3
TTrigger
��4 <
>
��< =
(
��= >

parameters
��> H
.
��H I
Trigger
��I P
,
�� 
currentResult
�� #
.
��# $
StartingState
��$ 1
,
�� 
currentResult
�� #
.
��# $
PreviousState
��$ 1
,
�� 
currentResult
�� #
.
��# $
CurrentState
��$ 0
,
�� 
currentResult
�� #
.
��# $ 
LastTransitionName
��$ 6
,
�� 
transitionDefined
�� '
:
��' (
true
��) -
,
�� 
wasCancelled
�� "
:
��" #

parameters
��$ .
.
��. /
CancellationToken
��/ @
.
��@ A%
IsCancellationRequested
��A X
,
�� 
conditionMet
�� "
:
��" #
false
��$ )
)
��) *
;
��* +
}
�� 	
public
�� 
async
�� 
Task
�� %
ExecuteEntryActionAsync
�� 1
(
��1 2!
ExecutionParameters
��2 E
<
��E F
T
��F G
,
��G H
TTrigger
��I Q
>
��Q R

parameters
��S ]
,
��] ^#
StateTransitionResult
��_ t
<
��t u
TState
��u {
,
��{ |
TTrigger��} �
>��� �
currentResult��� �
)��� �
{
�� 	
if
�� 
(
�� (
_previousStateEntryActions
�� *
.
��* +
TryGetValue
��+ 6
(
��6 7
currentResult
��7 D
.
��D E
PreviousState
��E R
,
��R S
out
��T W
var
��X [
action
��\ b
)
��b c
)
��c d
{
�� 
if
�� 
(
�� 

parameters
�� 
.
�� 
CancellationToken
�� 0
.
��0 1%
IsCancellationRequested
��1 H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 
action
�� 
.
�� 
Invoke
�� #
(
��# $

parameters
��$ .
.
��. /
Context
��/ 6
,
��6 7

parameters
��8 B
.
��B C
CancellationToken
��C T
)
��T U
.
��U V
ConfigureAwait
��V d
(
��d e'
continueOnCapturedContext
��e ~
:
��~ 
false��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� !
_defaultEntryAction
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
if
�� 
(
�� 

parameters
�� 
.
�� 
CancellationToken
�� 0
.
��0 1%
IsCancellationRequested
��1 H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� !
_defaultEntryAction
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
await
�� !
_defaultEntryAction
�� +
.
��+ ,
Invoke
��, 2
(
��2 3

parameters
��3 =
.
��= >
Context
��> E
,
��E F

parameters
��G Q
.
��Q R
CancellationToken
��R c
)
��c d
.
��d e
ConfigureAwait
��e s
(
��s t(
continueOnCapturedContext��t �
:��� �
false��� �
)��� �
;��� �
}��� �
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� '
ExecuteReentryActionAsync
�� 3
(
��3 4!
ExecutionParameters
��4 G
<
��G H
T
��H I
,
��I J
TTrigger
��K S
>
��S T

parameters
��U _
,
��_ `#
StateTransitionResult
��a v
<
��v w
TState
��w }
,
��} ~
TTrigger�� �
>��� �
currentResult��� �
)��� �
{
�� 	
if
�� 
(
�� 
_superState
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
await
�� 
_superState
�� !
.
��! "'
ExecuteReentryActionAsync
��" ;
(
��; <

parameters
��< F
,
��F G
currentResult
��H U
)
��U V
.
�� 
ConfigureAwait
�� #
(
��# $'
continueOnCapturedContext
��$ =
:
��= >
false
��? D
)
��D E
;
��E F
}
�� 
if
�� 
(
�� 
_reentryAction
�� 
!=
�� !
null
��" &
&&
��' )
!
��* +

parameters
��+ 5
.
��5 6
CancellationToken
��6 G
.
��G H%
IsCancellationRequested
��H _
)
��_ `
{
�� 
await
�� 
_reentryAction
�� $
.
��$ %
Invoke
��% +
(
��+ ,

parameters
��, 6
.
��6 7
Context
��7 >
,
��> ?

parameters
��@ J
.
��J K
CancellationToken
��K \
)
��\ ]
.
�� 
ConfigureAwait
�� #
(
��# $'
continueOnCapturedContext
��$ =
:
��= >
false
��? D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� $
ExecuteExitActionAsync
�� 0
(
��0 1!
ExecutionParameters
��1 D
<
��D E
T
��E F
,
��F G
TTrigger
��H P
>
��P Q

parameters
��R \
,
�� #
StateTransitionResult
�� #
<
��# $
TState
��$ *
,
��* +
TTrigger
��, 4
>
��4 5
currentResult
��6 C
)
��C D
{
�� 	
if
�� 
(
�� #
_nextStateExitActions
�� %
.
��% &
TryGetValue
��& 1
(
��1 2
currentResult
��2 ?
.
��? @
CurrentState
��@ L
,
��L M
out
��N Q
var
��R U
action
��V \
)
��\ ]
)
��] ^
{
�� 
if
�� 
(
�� 

parameters
�� 
.
�� 
CancellationToken
�� 0
.
��0 1%
IsCancellationRequested
��1 H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� 
await
�� 
action
�� 
.
�� 
Invoke
�� #
(
��# $

parameters
��$ .
.
��. /
Context
��/ 6
,
��6 7

parameters
��8 B
.
��B C
CancellationToken
��C T
)
��T U
.
�� 
ConfigureAwait
�� "
(
��" #'
continueOnCapturedContext
��# <
:
��< =
false
��> C
)
��C D
;
��D E
}
�� 
if
�� 
(
��  
_defaultExitAction
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
if
�� 
(
�� 

parameters
�� 
.
�� 
CancellationToken
�� 0
.
��0 1%
IsCancellationRequested
��1 H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
��  
_defaultExitAction
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
await
��  
_defaultExitAction
�� ,
.
��, -
Invoke
��- 3
(
��3 4

parameters
��4 >
.
��> ?
Context
��? F
,
��F G

parameters
��H R
.
��R S
CancellationToken
��S d
)
��d e
.
�� 
ConfigureAwait
�� '
(
��' ('
continueOnCapturedContext
��( A
:
��A B
false
��C H
)
��H I
;
��I J
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� /
<
��/ 0
TState
��0 6
,
��6 7
TTrigger
��8 @
>
��@ A
>
��A B
FireTriggerAsync
��C S
(
��S T!
ExecutionParameters
��T g
<
��g h
T
��h i
,
��i j
TTrigger
��k s
>
��s t

parameters
��u 
)�� �
{
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
TryGetValue
��  +
(
��+ ,

parameters
��, 6
.
��6 7
Trigger
��7 >
,
��> ?
out
��@ C
var
��D G
triggerAction
��H U
)
��U V
)
��V W
{
�� 
await
�� 
triggerAction
�� #
.
��# $
ExecuteAsync
��$ 0
(
��0 1

parameters
��1 ;
.
��; <
Context
��< C
,
��C D
request
��E L
:
��L M
null
��N R
,
��R S
cancellationToken
��T e
:
��e f

parameters
��g q
.
��q r 
CancellationToken��r �
)��� �
.
�� 
ConfigureAwait
�� #
(
��# $'
continueOnCapturedContext
��$ =
:
��= >
false
��? D
)
��D E
;
��E F
}
�� 
var
�� 
result
�� 
=
�� 
await
�� "
FireTriggerPrimAsync
�� 3
(
��3 4

parameters
��4 >
)
��> ?
.
��? @
ConfigureAwait
��@ N
(
��N O'
continueOnCapturedContext
��O h
:
��h i
false
��j o
)
��o p
;
��p q
if
�� 
(
�� 
!
�� 
(
�� 
result
�� 
?
�� 
.
�� 
WasTransitioned
�� )
??
��* ,
false
��- 2
)
��2 3
&&
��4 6
_superState
��7 B
!=
��C E
null
��F J
)
��J K
{
�� 
result
�� 
=
�� 
await
�� 
_superState
�� *
.
��* +
FireTriggerAsync
��+ ;
(
��; <

parameters
��< F
)
��F G
.
��G H
ConfigureAwait
��H V
(
��V W'
continueOnCapturedContext
��W p
:
��p q
false
��r w
)
��w x
;
��x y
}
�� 
else
�� 
{
�� 
var
�� 

startState
�� 
=
��  
StateAccessor
��! .
(
��. /

parameters
��/ 9
.
��9 :
Context
��: A
)
��A B
;
��B C
result
�� 
=
�� 
result
�� 
??
��  "
new
��# &#
StateTransitionResult
��' <
<
��< =
TState
��= C
,
��C D
TTrigger
��E M
>
��M N
(
��N O

parameters
��O Y
.
��Y Z
Trigger
��Z a
,
�� 

startState
��  
,
�� 

startState
��  
,
�� 

startState
��  
,
��  
lastTransitionName
�� (
:
��( )
string
��* 0
.
��0 1
Empty
��1 6
,
�� 
transitionDefined
�� '
:
��' (
false
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� 0
<
��0 1
TState
��1 7
,
��7 8
TTrigger
��9 A
>
��A B
>
��B C"
FireTriggerPrimAsync
��D X
(
��X Y!
ExecutionParameters
��Y l
<
��l m
T
��m n
,
��n o
TTrigger
��p x
>
��x y

parameters��z �
)��� �
{
�� 	#
StateTransitionResult
�� !
<
��! "
TState
��" (
,
��( )
TTrigger
��* 2
>
��2 3
result
��4 :
=
��; <
null
��= A
;
��A B
if
�� 
(
�� 
Transitions
�� 
.
�� 
TryGetValue
�� '
(
��' (

parameters
��( 2
.
��2 3
Trigger
��3 :
,
��: ;
out
��< ?
var
��@ C
transitions
��D O
)
��O P
)
��P Q
{
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� '
in
��( *
transitions
��+ 6
.
��6 7
OrderBy
��7 >
(
��> ?
t
��? @
=>
��A C
t
��D E
.
��E F
Priority
��F N
)
��N O
)
��O P
{
�� 
result
�� 
=
�� 
await
�� "

transition
��# -
.
��- .
ExecuteAsync
��. :
(
��: ;

parameters
��; E
)
��E F
.
��F G
ConfigureAwait
��G U
(
��U V'
continueOnCapturedContext
��V o
:
��o p
false
��q v
)
��v w
;
��w x
if
�� 
(
�� 
result
�� 
.
�� 
WasTransitioned
�� .
)
��. /
{
�� 
return
�� 
result
�� #
;
��# $
}
��% &
}
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
	IsInState
�� 
(
�� 
TState
�� $
state
��% *
)
��* +
{
�� 	
if
�� 
(
�� 
state
�� 
.
�� 
	CompareTo
�� 
(
��  
State
��  %
)
��% &
==
��' )
$num
��* +
)
��+ ,
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
_superState
�� 
?
�� 
.
��  
	IsInState
��  )
(
��) *
state
��* /
)
��/ 0
??
��1 3
false
��4 9
;
��9 :
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
MakeSubStateOf
��= K
(
��K L&
IStateConfigurationAsync
��L d
<
��d e
T
��e f
,
��f g
TState
��h n
,
��n o
TTrigger
��p x
>
��x y&
superStateConfiguration��z �
)��� �
{
�� 	
AddSuperState
�� 
(
�� %
superStateConfiguration
�� 1
as
��2 4.
 IStateConfigurationAsyncInternal
��5 U
<
��U V
T
��V W
,
��W X
TState
��Y _
,
��_ `
TTrigger
��a i
>
��i j
)
��j k
;
��k l
return
�� 
this
�� 
;
�� 
}
�� 	
public
�� 
void
�� )
AddOtherStateAutoTransition
�� /
(
��/ 0
TState
��0 6

otherState
��7 A
,
��
 
TTrigger
�� 
trigger
�� 
,
��
 !
StateTransitionBase
�� 
<
��  
T
��  !
,
��! "
TState
��# )
,
��) *
TTrigger
��+ 3
>
��3 4

transition
��5 ?
)
��? @
{
�� 	
var
�� 
otherStateConfig
��  
=
��! ")
GetTargetStateConfiguration
��# >
(
��> ?

otherState
��? I
)
��I J
;
��J K
otherStateConfig
�� 
.
�� 
AddAutoTransition
�� .
(
��. /
trigger
��/ 6
,
��6 7

transition
��8 B
)
��B C
;
��C D
}
�� 	
private
�� .
 IStateConfigurationAsyncInternal
�� 0
<
��0 1
T
��1 2
,
��2 3
TState
��4 :
,
��: ;
TTrigger
��< D
>
��D E)
GetTargetStateConfiguration
��F a
(
��a b
TState
��b h
targetState
��i t
)
��t u
{
�� 	
return
�� 
_stateMachine
��  
.
��  !
ConfigureState
��! /
(
��/ 0
targetState
��0 ;
)
��; <
as
��= ?.
 IStateConfigurationAsyncInternal
��@ `
<
��` a
T
��a b
,
��b c
TState
��d j
,
��j k
TTrigger
��l t
>
��t u
;
��u v
}
�� 	
}
�� 
}�� �H
XC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateConfigurationBase.cs
	namespace 	
NStateManager
 
{ 
public 

abstract 
class "
StateConfigurationBase 0
<0 1
T1 2
,2 3
TState4 :
,: ;
TTrigger< D
>D E
whereF K
TStateL R
:S T
IComparableU `
{ 
	protected 
internal 

Dictionary %
<% &
TTrigger& .
,. /
List0 4
<4 5
StateTransitionBase5 H
<H I
TI J
,J K
TStateL R
,R S
TTriggerT \
>\ ]
>] ^
>^ _
AutoTransitions` o
=p q
newr u

Dictionary	v �
<
� �
TTrigger
� �
,
� �
List
� �
<
� �!
StateTransitionBase
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
>
� �
>
� �
(
� �
)
� �
;
� �
	protected 
internal 

Dictionary %
<% &
TTrigger& .
,. /
List0 4
<4 5
StateTransitionBase5 H
<H I
TI J
,J K
TStateL R
,R S
TTriggerT \
>\ ]
>] ^
>^ _
Transitions` k
=l m
newn q

Dictionaryr |
<| }
TTrigger	} �
,
� �
List
� �
<
� �!
StateTransitionBase
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
>
� �
>
� �
(
� �
)
� �
;
� �
public 
TState 
State 
{ 
get !
;! "
}# $
public 
Func 
< 
T 
, 
TState 
> 
StateAccessor ,
{- .
get/ 2
;2 3
}4 5
public 
Action 
< 
T 
, 
TState 
>  
StateMutator! -
{. /
get0 3
;3 4
}5 6
	protected$$ "
StateConfigurationBase$$ (
($$( )
TState$$) /
state$$0 5
,$$5 6
Func$$7 ;
<$$; <
T$$< =
,$$= >
TState$$? E
>$$E F
stateAccessor$$G T
,$$T U
Action$$V \
<$$\ ]
T$$] ^
,$$^ _
TState$$` f
>$$f g
stateMutator$$h t
)$$t u
{%% 	
State&& 
=&& 
state&& 
;&& 
StateAccessor'' 
='' 
stateAccessor'' )
??''* ,
throw''- 2
new''3 6!
ArgumentNullException''7 L
(''L M
nameof''M S
(''S T
stateAccessor''T a
)''a b
)''b c
;''c d
StateMutator(( 
=(( 
stateMutator(( '
??((( *
throw((+ 0
new((1 4!
ArgumentNullException((5 J
(((J K
nameof((K Q
(((Q R
stateMutator((R ^
)((^ _
)((_ `
;((` a
})) 	
public00 
void00 
AddAutoTransition00 %
(00% &
TTrigger00& .
trigger00/ 6
,006 7
StateTransitionBase008 K
<00K L
T00L M
,00M N
TState00O U
,00U V
TTrigger00W _
>00_ `

transition00a k
)00k l
{11 	
if22 
(22 
!22 
AutoTransitions22  
.22  !
TryGetValue22! ,
(22, -
trigger22- 4
,224 5
out226 9
var22: =
triggerTransitions22> P
)22P Q
)22Q R
{33 
triggerTransitions44 "
=44# $
new44% (
List44) -
<44- .
StateTransitionBase44. A
<44A B
T44B C
,44C D
TState44E K
,44K L
TTrigger44M U
>44U V
>44V W
(44W X
)44X Y
;44Y Z
AutoTransitions55 
.55  
Add55  #
(55# $
trigger55$ +
,55+ ,
triggerTransitions55- ?
)55? @
;55@ A
}66 
if88 
(88 
triggerTransitions88 "
.88" #
Any88# &
(88& '
t88' (
=>88) +
t88, -
.88- .
Priority88. 6
==887 9

transition88: D
.88D E
Priority88E M
)88M N
)88N O
{99 
throw99 
new99 %
InvalidOperationException99 1
(991 2
$"992 4 
Auto transition for 994 H
{99H I
State99I N
}99N O!
 state with priority 99O d
{99d e

transition99e o
.99o p
Priority99p x
}99x y
 already added.	99y �
"
99� �
)
99� �
;
99� �
}
99� �
triggerTransitions;; 
.;; 
Add;; "
(;;" #

transition;;# -
);;- .
;;;. /
}<< 	
publicCC 
voidCC 
AddTransitionCC !
(CC! "
TTriggerCC" *
triggerCC+ 2
,CC2 3
StateTransitionBaseCC4 G
<CCG H
TCCH I
,CCI J
TStateCCK Q
,CCQ R
TTriggerCCS [
>CC[ \

transitionCC] g
)CCg h
{DD 	
ifEE 
(EE 
!EE 
TransitionsEE 
.EE 
TryGetValueEE (
(EE( )
triggerEE) 0
,EE0 1
outEE2 5
varEE6 9
existingTransitionsEE: M
)EEM N
)EEN O
{FF 
TransitionsFF 
.FF 
AddFF 
(FF 
triggerFF %
,FF% &
newFF' *
ListFF+ /
<FF/ 0
StateTransitionBaseFF0 C
<FFC D
TFFD E
,FFE F
TStateFFG M
,FFM N
TTriggerFFO W
>FFW X
>FFX Y
{FFZ [

transitionFF[ e
}FFe f
)FFf g
;FFg h
}FFi j
elseGG 
{HH 
ifII 
(II 
existingTransitionsII '
.II' (
AnyII( +
(II+ ,
tII, -
=>II. 0
tII1 2
.II2 3
PriorityII3 ;
==II< >

transitionII? I
.III J
PriorityIIJ R
)IIR S
)IIS T
{JJ 
throwJJ 
newJJ %
InvalidOperationExceptionJJ 5
(JJ5 6
$"JJ6 8
{JJ8 9
triggerJJ9 @
}JJ@ A.
" trigger was previously added for JJA c
{JJc d
StateJJd i
}JJi j
 state as priority JJj }
{JJ} ~

transition	JJ~ �
.
JJ� �
Priority
JJ� �
}
JJ� �
.
JJ� �
"
JJ� �
)
JJ� �
;
JJ� �
}
JJ� �
existingTransitionsLL #
.LL# $
AddLL$ '
(LL' (

transitionLL( 2
)LL2 3
;LL3 4
}MM 
}NN 	
	protectedPP !
StateTransitionResultPP '
<PP' (
TStatePP( .
,PP. /
TTriggerPP0 8
>PP8 9
FireTriggerPrimPP: I
(PPI J
ExecutionParametersPPJ ]
<PP] ^
TPP^ _
,PP_ `
TTriggerPPa i
>PPi j

parametersPPk u
)PPu v
{QQ 	!
StateTransitionResultRR !
<RR! "
TStateRR" (
,RR( )
TTriggerRR* 2
>RR2 3
resultRR4 :
=RR; <
nullRR= A
;RRA B
ifTT 
(TT 
TransitionsTT 
.TT 
TryGetValueTT '
(TT' (

parametersTT( 2
.TT2 3
TriggerTT3 :
,TT: ;
outTT< ?
varTT@ C
transitionsTTD O
)TTO P
)TTP Q
{UU 
foreachVV 
(VV 
varVV 

transitionVV '
inVV( *
transitionsVV+ 6
.VV6 7
OrderByVV7 >
(VV> ?
tVV? @
=>VVA C
tVVD E
.VVE F
PriorityVVF N
)VVN O
)VVO P
{WW 
resultXX 
=XX 

transitionXX '
.XX' (
ExecuteXX( /
(XX/ 0

parametersXX0 :
)XX: ;
;XX; <
ifYY 
(YY 
resultYY 
.YY 
WasTransitionedYY .
)YY. /
{ZZ 
returnZZ 
resultZZ #
;ZZ# $
}ZZ% &
}[[ 
}\\ 
return^^ 
result^^ 
;^^ 
}__ 	
}`` 
}aa ��
NC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateMachine.cs
	namespace 	
NStateManager
 
{ 
public 

sealed 
class 
StateMachine $
<$ %
T% &
,& '
TState( .
,. /
TTrigger0 8
>8 9
:: ;
IStateMachine< I
<I J
TJ K
,K L
TStateM S
,S T
TTriggerU ]
>] ^
where 
TState 
: 
IComparable "
{ 
private 
readonly 

Dictionary #
<# $
TState$ *
,* +'
IStateConfigurationInternal, G
<G H
TH I
,I J
TStateK Q
,Q R
TTriggerS [
>[ \
>\ ] 
_stateConfigurations^ r
=s t
new 

Dictionary 
< 
TState !
,! "'
IStateConfigurationInternal# >
<> ?
T? @
,@ A
TStateB H
,H I
TTriggerJ R
>R S
>S T
(T U
)U V
;V W
private 
readonly 

Dictionary #
<# $
TTrigger$ ,
,, -
TriggerActionBase. ?
<? @
T@ A
,A B
TTriggerC K
>K L
>L M
_triggerActionsN ]
=^ _
new 

Dictionary 
< 
TTrigger #
,# $
TriggerActionBase% 6
<6 7
T7 8
,8 9
TTrigger: B
>B C
>C D
(D E
)E F
;F G
public 
Func 
< 
T 
, 
TState 
> 
StateAccessor ,
{- .
get/ 2
;2 3
}4 5
public 
Action 
< 
T 
, 
TState 
>  
StateMutator! -
{. /
get0 3
;3 4
}5 6
public$$ 
event$$ 
EventHandler$$ !
<$$! "
TransitionEventArgs$$" 5
<$$5 6
T$$6 7
,$$7 8
TState$$9 ?
,$$? @
TTrigger$$A I
>$$I J
>$$J K
OnNoTransition$$L Z
;$$Z [
public)) 
event)) 
EventHandler)) !
<))! "
TransitionEventArgs))" 5
<))5 6
T))6 7
,))7 8
TState))9 ?
,))? @
TTrigger))A I
>))I J
>))J K"
OnTriggerNotConfigured))L b
;))b c
public00 
StateMachine00 
(00 
Func00  
<00  !
T00! "
,00" #
TState00$ *
>00* +
stateAccessor00, 9
,009 :
Action00; A
<00A B
T00B C
,00C D
TState00E K
>00K L
stateMutator00M Y
)00Y Z
{11 	
StateAccessor22 
=22 
stateAccessor22 )
??22* ,
throw22- 2
new223 6!
ArgumentNullException227 L
(22L M
nameof22M S
(22S T
stateAccessor22T a
)22a b
)22b c
;22c d
StateMutator33 
=33 
stateMutator33 '
??33( *
throw33+ 0
new331 4!
ArgumentNullException335 J
(33J K
nameof33K Q
(33Q R
stateMutator33R ^
)33^ _
)33_ `
;33` a
}44 	
public== 
IStateMachine== 
<== 
T== 
,== 
TState==  &
,==& '
TTrigger==( 0
>==0 1
AddTriggerAction==2 B
(==B C
TTrigger==C K
trigger==L S
,==S T
Action==U [
<==[ \
T==\ ]
>==] ^
action==_ e
)==e f
{>> 	
if?? 
(?? 
_triggerActions?? 
.??  
ContainsKey??  +
(??+ ,
trigger??, 3
)??3 4
)??4 5
{@@ 
throw@@ 
new@@ %
InvalidOperationException@@ 1
(@@1 2
$"@@2 4+
Only one action is allowed for @@4 S
{@@S T
trigger@@T [
}@@[ \
	 trigger.@@\ e
"@@e f
)@@f g
;@@g h
}@@i j
_triggerActionsBB 
.BB 
AddBB 
(BB  
triggerBB  '
,BB' ( 
TriggerActionFactoryBB) =
<BB= >
TBB> ?
,BB? @
TTriggerBBA I
>BBI J
.BBJ K
GetTriggerActionBBK [
(BB[ \
actionBB\ b
)BBb c
)BBc d
;BBd e
returnDD 
thisDD 
;DD 
}EE 	
publicOO 
IStateMachineOO 
<OO 
TOO 
,OO 
TStateOO  &
,OO& '
TTriggerOO( 0
>OO0 1
AddTriggerActionOO2 B
<OOB C
TRequestOOC K
>OOK L
(OOL M
TTriggerOOM U
triggerOOV ]
,OO] ^
ActionOO_ e
<OOe f
TOOf g
,OOg h
TRequestOOi q
>OOq r
actionOOs y
)OOy z
{PP 	
ifQQ 
(QQ 
_triggerActionsQQ 
.QQ  
ContainsKeyQQ  +
(QQ+ ,
triggerQQ, 3
)QQ3 4
)QQ4 5
{RR 
throwRR 
newRR %
InvalidOperationExceptionRR 1
(RR1 2
$"RR2 4+
Only one action is allowed for RR4 S
{RRS T
triggerRRT [
}RR[ \
	 trigger.RR\ e
"RRe f
)RRf g
;RRg h
}RRi j
_triggerActionsTT 
.TT 
AddTT 
(TT  
triggerTT  '
,TT' ( 
TriggerActionFactoryTT) =
<TT= >
TTT> ?
,TT? @
TTriggerTTA I
>TTI J
.TTJ K
GetTriggerActionTTK [
(TT[ \
actionTT\ b
)TTb c
)TTc d
;TTd e
returnVV 
thisVV 
;VV 
}WW 	
public^^ 
IStateConfiguration^^ "
<^^" #
T^^# $
,^^$ %
TState^^& ,
,^^, -
TTrigger^^. 6
>^^6 7
ConfigureState^^8 F
(^^F G
TState^^G M
state^^N S
)^^S T
{__ 	
if`` 
(``  
_stateConfigurations`` $
.``$ %
TryGetValue``% 0
(``0 1
state``1 6
,``6 7
out``8 ;
var``< ?
stateConfiguration``@ R
)``R S
)``S T
{aa 
returnaa 
stateConfigurationaa '
;aa' (
}aa) *
varcc 
newStatecc 
=cc 
newcc 
StateConfigurationcc 1
<cc1 2
Tcc2 3
,cc3 4
TStatecc5 ;
,cc; <
TTriggercc= E
>ccE F
(ccF G
stateccG L
,ccL M
thisccN R
)ccR S
;ccS T 
_stateConfigurationsdd  
.dd  !
Adddd! $
(dd$ %
statedd% *
,dd* +
newStatedd, 4
)dd4 5
;dd5 6
returnff 
newStateff 
;ff 
}gg 	
publicpp !
StateTransitionResultpp $
<pp$ %
TStatepp% +
,pp+ ,
TTriggerpp- 5
>pp5 6
FireTriggerpp7 B
<ppB C
TRequestppC K
>ppK L
(ppL M
TppM N
contextppO V
,ppV W
TTriggerppX `
triggerppa h
,pph i
TRequestppj r
requestpps z
)ppz {
whereqq 
TRequestqq 
:qq 
classqq "
{rr 	
varss 
executionParametersss #
=ss$ %
newss& )
ExecutionParametersss* =
<ss= >
Tss> ?
,ss? @
TTriggerssA I
>ssI J
(ssJ K
triggerssK R
,ssR S
contextssT [
,ss[ \
requestss] d
:ssd e
requestssf m
)ssm n
;ssn o
vartt 

startStatett 
=tt 
StateAccessortt *
(tt* +
contexttt+ 2
)tt2 3
;tt3 4
ifvv 
(vv 
_triggerActionsvv 
.vv  
TryGetValuevv  +
(vv+ ,
triggervv, 3
,vv3 4
outvv5 8
varvv9 <
triggerActionvv= J
)vvJ K
)vvK L
{ww 
triggerActionww 
.ww 
Executeww #
(ww# $
executionParametersww$ 7
)ww7 8
;ww8 9
}ww: ;
varyy 
resultyy 
=yy 
!yy  
_stateConfigurationsyy .
.yy. /
TryGetValueyy/ :
(yy: ;

startStateyy; E
,yyE F
outyyG J
varyyK N
stateConfigurationyyO a
)yya b
?zz 
newzz !
StateTransitionResultzz +
<zz+ ,
TStatezz, 2
,zz2 3
TTriggerzz4 <
>zz< =
(zz= >
triggerzz> E
,{{ 

startState{{  
,|| 

startState||  
,}} 

startState}}  
,~~ 
lastTransitionName~~ (
:~~( )
string~~* 0
.~~0 1
Empty~~1 6
, 
transitionDefined '
:' (
false) .
). /
:
��  
stateConfiguration
�� $
.
��$ %
FireTrigger
��% 0
(
��0 1!
executionParameters
��1 D
)
��D E
;
��E F
return
�� (
executeExitAndEntryActions
�� -
(
��- .!
executionParameters
��. A
,
��A B
result
��C I
)
��I J
;
��J K
}
�� 	
public
�� #
StateTransitionResult
�� $
<
��$ %
TState
��% +
,
��+ ,
TTrigger
��- 5
>
��5 6
FireTrigger
��7 B
(
��B C
T
��C D
context
��E L
,
��L M
TTrigger
��N V
trigger
��W ^
)
��^ _
{
�� 	
var
�� 

startState
�� 
=
�� 
StateAccessor
�� *
(
��* +
context
��+ 2
)
��2 3
;
��3 4
var
�� !
executionParameters
�� #
=
��$ %
new
��& )!
ExecutionParameters
��* =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
(
��J K
trigger
��K R
,
��R S
context
��T [
)
��[ \
;
��\ ]
if
�� 
(
�� 
_triggerActions
�� 
.
��  
TryGetValue
��  +
(
��+ ,
trigger
��, 3
,
��3 4
out
��5 8
var
��9 <
triggerAction
��= J
)
��J K
)
��K L
{
�� 
triggerAction
�� 
.
�� 
Execute
�� #
(
��# $!
executionParameters
��$ 7
)
��7 8
;
��8 9
}
��: ;
var
�� 
result
�� 
=
�� 
!
�� "
_stateConfigurations
�� .
.
��. /
TryGetValue
��/ :
(
��: ;

startState
��; E
,
��E F
out
��G J
var
��K N 
stateConfiguration
��O a
)
��a b
?
�� 
new
�� #
StateTransitionResult
�� +
<
��+ ,
TState
��, 2
,
��2 3
TTrigger
��4 <
>
��< =
(
��= >
trigger
��> E
,
�� 

startState
��  
,
�� 

startState
��  
,
�� 

startState
��  
,
��  
lastTransitionName
�� '
:
��' (
String
��) /
.
��/ 0
Empty
��0 5
,
�� 
transitionDefined
�� '
:
��' (
false
��) .
)
��. /
:
��  
stateConfiguration
�� $
.
��$ %
FireTrigger
��% 0
(
��0 1!
executionParameters
��1 D
)
��D E
;
��E F
return
�� (
executeExitAndEntryActions
�� -
(
��- .!
executionParameters
��. A
,
��A B
result
��C I
)
��I J
;
��J K
}
�� 	
public
�� 
bool
�� 
	IsInState
�� 
(
�� 
T
�� 
context
��  '
,
��' (
TState
��) /
state
��0 5
)
��5 6
{
�� 	
var
�� 
objectState
�� 
=
�� 
StateAccessor
�� +
(
��+ ,
context
��, 3
)
��3 4
;
��4 5
if
�� 
(
�� 
state
�� 
.
�� 
IsEqual
�� 
(
�� 
objectState
�� )
)
��) *
)
��* +
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� "
_stateConfigurations
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
objectState
��4 ?
,
��? @
out
��A D
var
��E H&
objectStateConfiguration
��I a
)
��a b
&&
�� &
objectStateConfiguration
�� .
.
��. /
	IsInState
��/ 8
(
��8 9
state
��9 >
)
��> ?
;
��? @
}
�� 	
public
�� 
IStateMachine
�� 
<
�� 
T
�� 
,
�� 
TState
��  &
,
��& '
TTrigger
��( 0
>
��0 1*
RegisterOnTransitionedAction
��2 N
(
��N O
Action
��O U
<
��U V
T
��V W
,
��W X#
StateTransitionResult
��Y n
<
��n o
TState
��o u
,
��u v
TTrigger
��w 
>�� �
>��� �
action��� �
)��� �
{
�� 	!
StateTransitionBase
�� 
<
��  
T
��  !
,
��! "
TState
��# )
,
��) *
TTrigger
��+ 3
>
��3 4
.
��4 5!
OnTransitionedEvent
��5 H
+=
��I K
action
��L R
;
��R S
return
�� 
this
�� 
;
�� 
}
�� 	
private
�� #
StateTransitionResult
�� %
<
��% &
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7(
executeExitAndEntryActions
��8 R
(
��R S!
ExecutionParameters
��S f
<
��f g
T
��g h
,
��h i
TTrigger
��j r
>
��r s

parameters
��t ~
,
��
 #
StateTransitionResult
�� !
<
��! "
TState
��" (
,
��( )
TTrigger
��* 2
>
��2 3
currentResult
��4 A
)
��A B
{
�� 	
if
�� 
(
�� 
currentResult
�� 
.
�� 
WasTransitioned
�� -
&&
��. 0
!
�� 
(
�� 
currentResult
�� 
.
��  
StartingState
��  -
.
��- .
	CompareTo
��. 7
(
��7 8
currentResult
��8 E
.
��E F
PreviousState
��F S
)
��S T
==
��U W
$num
��X Y
&&
�� 
currentResult
�� "
.
��" #
PreviousState
��# 0
.
��0 1
	CompareTo
��1 :
(
��: ;
currentResult
��; H
.
��H I
CurrentState
��I U
)
��U V
==
��W Y
$num
��Z [
)
��[ \
)
��\ ]
{
�� "
_stateConfigurations
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
currentResult
��1 >
.
��> ?
PreviousState
��? L
,
��L M
out
��N Q
var
��R U
previousState
��V c
)
��c d
;
��d e
if
�� 
(
�� 
!
�� 
	IsInState
�� 
(
�� 

parameters
�� )
.
��) *
Context
��* 1
,
��1 2
currentResult
��3 @
.
��@ A
PreviousState
��A N
)
��N O
)
��O P
{
�� 
previousState
�� 
.
��  
ExecuteExitAction
��  1
(
��1 2

parameters
��2 <
.
��< =
Context
��= D
,
��D E
currentResult
��F S
)
��S T
;
��T U
}
��V W
if
�� 
(
�� "
_stateConfigurations
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
currentResult
��5 B
.
��B C
CurrentState
��C O
,
��O P
out
��Q T
var
��U X
newState
��Y a
)
��a b
)
��b c
{
�� 
if
�� 
(
�� 
!
�� 
previousState
�� &
.
��& '
	IsInState
��' 0
(
��0 1
currentResult
��1 >
.
��> ?
CurrentState
��? K
)
��K L
)
��L M
{
�� 
newState
�� 
.
��  
ExecuteEntryAction
�� 1
(
��1 2

parameters
��2 <
.
��< =
Context
��= D
,
��D E
currentResult
��F S
)
��S T
;
��T U
}
��V W
var
�� !
preAutoForwardState
�� +
=
��, -
currentResult
��. ;
.
��; <
CurrentState
��< H
;
��H I
var
�� "
autoTransitionResult
�� ,
=
��- .
newState
��/ 7
.
��7 8#
ExecuteAutoTransition
��8 M
(
��M N

parameters
��N X
,
��X Y
currentResult
��Z g
)
��g h
;
��h i
if
�� 
(
�� "
autoTransitionResult
�� ,
.
��, -
WasTransitioned
��- <
)
��< =
{
�� 
currentResult
�� %
.
��% &
PreviousState
��& 3
=
��4 5
currentResult
��6 C
.
��C D
CurrentState
��D P
;
��P Q
currentResult
�� %
.
��% &
CurrentState
��& 2
=
��3 4"
autoTransitionResult
��5 I
.
��I J
CurrentState
��J V
;
��V W
currentResult
�� %
.
��% & 
LastTransitionName
��& 8
=
��9 :"
autoTransitionResult
��; O
.
��O P 
LastTransitionName
��P b
;
��b c
}
�� 
if
�� 
(
�� 
currentResult
�� %
.
��% &
CurrentState
��& 2
.
��2 3
	CompareTo
��3 <
(
��< =!
preAutoForwardState
��= P
)
��P Q
!=
��R T
$num
��U V
)
��V W
{
�� 
currentResult
�� #
=
��$ %(
executeExitAndEntryActions
��& @
(
��@ A

parameters
��A K
,
��K L
currentResult
��M Z
)
��Z [
;
��[ \
}
��] ^
}
�� 
}
�� 
else
�� 
if
�� 
(
�� "
_stateConfigurations
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
currentResult
��6 C
.
��C D
CurrentState
��D P
,
��P Q
out
��R U
var
��V Y
reenteredState
��Z h
)
��h i
)
��i j
{
�� 
reenteredState
�� 
.
�� "
ExecuteReentryAction
�� 1
(
��1 2

parameters
��2 <
.
��< =
Context
��= D
,
��D E
currentResult
��F S
)
��S T
;
��T U
}
��V W
var
�� !
transitionEventArgs
�� #
=
��$ %
new
��& )!
TransitionEventArgs
��* =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R
(
��R S

parameters
��S ]
,
��] ^
currentResult
��_ l
)
��l m
;
��m n
if
�� 
(
�� 
!
�� 
currentResult
�� 
.
�� 
WasTransitioned
�� .
)
��. /
{
�� 
if
�� 
(
�� 
!
�� 
currentResult
�� "
.
��" #
TransitionDefined
��# 4
)
��4 5
{
�� $
OnTriggerNotConfigured
�� (
?
��( )
.
��) *
Invoke
��* 0
(
��0 1
this
��1 5
,
��5 6!
transitionEventArgs
��7 J
)
��J K
;
��K L
}
��M N
OnNoTransition
�� 
?
�� 
.
��  
Invoke
��  &
(
��& '
this
��' +
,
��+ ,!
transitionEventArgs
��- @
)
��@ A
;
��A B
}
�� 
return
�� 
currentResult
��  
;
��  !
}
�� 	
}
�� 
}�� ��
SC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateMachineAsync.cs
	namespace 	
NStateManager
 
{ 
public 

sealed 
class 
StateMachineAsync )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
:? @
IStateMachineAsyncA S
<S T
TT U
,U V
TStateW ]
,] ^
TTrigger_ g
>g h
where 
TState 
: 
IComparable "
{ 
private 
readonly 

Dictionary #
<# $
TState$ *
,* +,
 IStateConfigurationAsyncInternal, L
<L M
TM N
,N O
TStateP V
,V W
TTriggerX `
>` a
>a b 
_stateConfigurationsc w
=x y
newz }

Dictionary	~ �
<
� �
TState
� �
,
� �.
 IStateConfigurationAsyncInternal
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
>
� �
(
� �
)
� �
;
� �
private 
readonly 

Dictionary #
<# $
TTrigger$ ,
,, -
FunctionActionBase. @
<@ A
TA B
>B C
>C D
_triggerActionsE T
=U V
newW Z

Dictionary[ e
<e f
TTriggerf n
,n o
FunctionActionBase	p �
<
� �
T
� �
>
� �
>
� �
(
� �
)
� �
;
� �
public 
Func 
< 
T 
, 
TState 
> 
StateAccessor ,
{- .
get/ 2
;2 3
}4 5
public 
Action 
< 
T 
, 
TState 
>  
StateMutator! -
{. /
get0 3
;3 4
}5 6
public$$ 
event$$ 
EventHandler$$ !
<$$! "
TransitionEventArgs$$" 5
<$$5 6
T$$6 7
,$$7 8
TState$$9 ?
,$$? @
TTrigger$$A I
>$$I J
>$$J K
OnNoTransition$$L Z
;$$Z [
public)) 
event)) 
EventHandler)) !
<))! "
TransitionEventArgs))" 5
<))5 6
T))6 7
,))7 8
TState))9 ?
,))? @
TTrigger))A I
>))I J
>))J K"
OnTriggerNotConfigured))L b
;))b c
public00 
StateMachineAsync00  
(00  !
Func00! %
<00% &
T00& '
,00' (
TState00) /
>00/ 0
stateAccessor001 >
,00> ?
Action00@ F
<00F G
T00G H
,00H I
TState00J P
>00P Q
stateMutator00R ^
)00^ _
{11 	
StateAccessor22 
=22 
stateAccessor22 )
??22* ,
throw22- 2
new223 6!
ArgumentNullException227 L
(22L M
nameof22M S
(22S T
stateAccessor22T a
)22a b
)22b c
;22c d
StateMutator33 
=33 
stateMutator33 '
??33( *
throw33+ 0
new331 4!
ArgumentNullException335 J
(33J K
nameof33K Q
(33Q R
stateMutator33R ^
)33^ _
)33_ `
;33` a
}44 	
public== 
IStateMachineAsync== !
<==! "
T==" #
,==# $
TState==% +
,==+ ,
TTrigger==- 5
>==5 6
AddTriggerAction==7 G
(==G H
TTrigger==H P
trigger==Q X
,==X Y
Func==Z ^
<==^ _
T==_ `
,==` a
CancellationToken==b s
,==s t
Task==u y
>==y z
action	=={ �
)
==� �
{>> 	
if?? 
(?? 
_triggerActions?? 
.??  
ContainsKey??  +
(??+ ,
trigger??, 3
)??3 4
)??4 5
{@@ 
throw@@ 
new@@ %
InvalidOperationException@@ 1
(@@1 2
$"@@2 4+
Only one action is allowed for @@4 S
{@@S T
trigger@@T [
}@@[ \
	 trigger.@@\ e
"@@e f
)@@f g
;@@g h
}@@i j
_triggerActionsBB 
.BB 
AddBB 
(BB  
triggerBB  '
,BB' ( 
TriggerActionFactoryBB) =
<BB= >
TBB> ?
,BB? @
TTriggerBBA I
>BBI J
.BBJ K
GetTriggerActionBBK [
(BB[ \
actionBB\ b
)BBb c
)BBc d
;BBd e
returnDD 
thisDD 
;DD 
}EE 	
publicOO 
IStateMachineAsyncOO !
<OO! "
TOO" #
,OO# $
TStateOO% +
,OO+ ,
TTriggerOO- 5
>OO5 6
AddTriggerActionOO7 G
<OOG H
TRequestOOH P
>OOP Q
(OOQ R
TTriggerOOR Z
triggerOO[ b
,OOb c
FuncOOd h
<OOh i
TOOi j
,OOj k
TRequestOOl t
,OOt u
CancellationToken	OOv �
,
OO� �
Task
OO� �
>
OO� �
action
OO� �
)
OO� �
{PP 	
ifQQ 
(QQ 
_triggerActionsQQ 
.QQ  
ContainsKeyQQ  +
(QQ+ ,
triggerQQ, 3
)QQ3 4
)QQ4 5
{RR 
throwRR 
newRR %
InvalidOperationExceptionRR 1
(RR1 2
$"RR2 4+
Only one action is allowed for RR4 S
{RRS T
triggerRRT [
}RR[ \
	 trigger.RR\ e
"RRe f
)RRf g
;RRg h
}RRi j
_triggerActionsTT 
.TT 
AddTT 
(TT  
triggerTT  '
,TT' ( 
TriggerActionFactoryTT) =
<TT= >
TTT> ?
,TT? @
TTriggerTTA I
>TTI J
.TTJ K
GetTriggerActionTTK [
(TT[ \
actionTT\ b
)TTb c
)TTc d
;TTd e
returnVV 
thisVV 
;VV 
}WW 	
public^^ $
IStateConfigurationAsync^^ '
<^^' (
T^^( )
,^^) *
TState^^+ 1
,^^1 2
TTrigger^^3 ;
>^^; <
ConfigureState^^= K
(^^K L
TState^^L R
state^^S X
)^^X Y
{__ 	
if`` 
(``  
_stateConfigurations`` $
.``$ %
TryGetValue``% 0
(``0 1
state``1 6
,``6 7
out``8 ;
var``< ?
stateConfiguration``@ R
)``R S
)``S T
{aa 
returnaa 
stateConfigurationaa '
;aa' (
}aa) *
varcc 
newStatecc 
=cc 
newcc #
StateConfigurationAsynccc 6
<cc6 7
Tcc7 8
,cc8 9
TStatecc9 ?
,cc? @
TTriggerccA I
>ccI J
(ccJ K
stateccK P
,ccP Q
thisccR V
)ccV W
;ccW X 
_stateConfigurationsdd  
.dd  !
Adddd! $
(dd$ %
statedd% *
,dd* +
newStatedd, 4
)dd4 5
;dd5 6
returnff 
newStateff 
;ff 
}gg 	
publicpp 
asyncpp 
Taskpp 
<pp !
StateTransitionResultpp /
<pp/ 0
TStatepp0 6
,pp6 7
TTriggerpp8 @
>pp@ A
>ppA B
FireTriggerAsyncppC S
(ppS T
TppT U
contextppV ]
,pp] ^
TTriggerpp_ g
triggerpph o
,ppo p
CancellationToken	ppq �
cancellationToken
pp� �
=
pp� �
default
pp� �
(
pp� �
CancellationToken
pp� �
)
pp� �
)
pp� �
{qq 	
varrr 

startStaterr 
=rr 
StateAccessorrr *
(rr* +
contextrr+ 2
)rr2 3
;rr3 4
iftt 
(tt 
_triggerActionstt 
.tt  
TryGetValuett  +
(tt+ ,
triggertt, 3
,tt3 4
outtt5 8
vartt9 <
triggerActiontt= J
)ttJ K
)ttK L
{uu 
awaitvv 
triggerActionvv #
.vv# $
ExecuteAsyncvv$ 0
(vv0 1
contextvv1 8
,vv8 9
requestvv: A
:vvA B
nullvvC G
,vvG H
cancellationTokenvvI Z
:vvZ [
cancellationTokenvv\ m
)vvm n
.ww 
ConfigureAwaitww "
(ww" #%
continueOnCapturedContextww# <
:ww< =
falseww> C
)wwC D
;wwD E
}xx 
varzz 
executionParameterszz #
=zz$ %
newzz& )
ExecutionParameterszz* =
<zz= >
Tzz> ?
,zz? @
TTriggerzzA I
>zzI J
(zzJ K
triggerzzK R
,zzR S
contextzzT [
,zz[ \
cancellationTokenzz] n
)zzn o
;zzo p
var|| 
result|| 
=||  
_stateConfigurations|| -
.||- .
TryGetValue||. 9
(||9 :

startState||: D
,||D E
out||F I
var||J M
stateConfiguration||N `
)||` a
?}} 
await}} 
stateConfiguration}} *
.}}* +
FireTriggerAsync}}+ ;
(}}; <
executionParameters}}< O
)}}O P
.}}P Q
ConfigureAwait}}Q _
(}}_ `%
continueOnCapturedContext}}` y
:}}y z
false	}}{ �
)
}}� �
:~~ 
new~~ !
StateTransitionResult~~ +
<~~+ ,
TState~~, 2
,~~2 3
TTrigger~~4 <
>~~< =
(~~= >
trigger~~> E
, 

startState  
,
�� 

startState
��  
,
�� 

startState
��  
,
��  
lastTransitionName
�� (
:
��( )
string
��* 0
.
��0 1
Empty
��1 6
,
�� 
transitionDefined
�� '
:
��' (
false
��) .
)
��. /
;
��/ 0
return
�� 
await
�� -
executeExitAndEntryActionsAsync
�� 8
(
��8 9!
executionParameters
��9 L
,
��L M
result
��N T
)
��T U
.
��U V
ConfigureAwait
��V d
(
��d e'
continueOnCapturedContext
��e ~
:
��~ 
false��� �
)��� �
;��� �
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� /
<
��/ 0
TState
��0 6
,
��6 7
TTrigger
��8 @
>
��@ A
>
��A B
FireTriggerAsync
��C S
<
��S T
TRequest
��T \
>
��\ ]
(
��] ^
T
��^ _
context
��` g
,
��
 
TTrigger
�� 
trigger
�� 
,
��
 
TRequest
�� 
request
�� 
,
��
 
CancellationToken
�� 
cancellationToken
�� /
=
��0 1
default
��2 9
(
��9 :
CancellationToken
��: K
)
��K L
)
��L M
where
�� 
TRequest
�� 
:
�� 
class
�� "
{
�� 	
var
�� 

startState
�� 
=
�� 
StateAccessor
�� *
(
��* +
context
��+ 2
)
��2 3
;
��3 4
if
�� 
(
�� 
_triggerActions
�� 
.
��  
TryGetValue
��  +
(
��+ ,
trigger
��, 3
,
��3 4
out
��5 8
var
��9 <
triggerAction
��= J
)
��J K
)
��K L
{
�� 
await
�� 
triggerAction
�� !
.
��! "
ExecuteAsync
��" .
(
��. /
context
��/ 6
,
��6 7
cancellationToken
��8 I
,
��I J
request
��K R
)
��R S
.
��S T
ConfigureAwait
��T b
(
��b c'
continueOnCapturedContext
��c |
:
��| }
false��~ �
)��� �
;��� �
}��� �
var
�� !
executionParameters
�� #
=
��$ %
new
��& )!
ExecutionParameters
��* =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
(
��J K
trigger
��K R
,
��R S
context
��T [
,
��[ \
cancellationToken
��] n
,
��n o
request
��p w
)
��w x
;
��x y#
StateTransitionResult
�� !
<
��! "
TState
��" (
,
��( )
TTrigger
��* 2
>
��2 3
result
��4 :
;
��: ;
if
�� 
(
�� 
!
�� "
_stateConfigurations
�� %
.
��% &
TryGetValue
��& 1
(
��1 2

startState
��2 <
,
��< =
out
��> A
var
��B E 
stateConfiguration
��F X
)
��X Y
)
��Y Z
{
�� 
result
�� 
=
�� 
new
�� #
StateTransitionResult
�� 0
<
��0 1
TState
��1 7
,
��7 8
TTrigger
��9 A
>
��A B
(
��B C
trigger
��C J
,
�� 

startState
�� 
,
�� 

startState
�� 
,
�� 

startState
�� 
,
��  
lastTransitionName
�� $
:
��$ %
string
��& ,
.
��, -
Empty
��- 2
,
�� 
transitionDefined
�� #
:
��# $
false
��% *
)
��* +
;
��+ ,
}
��- .
else
�� 
{
�� 
result
�� 
=
�� 
await
��  
stateConfiguration
�� 1
.
��1 2
FireTriggerAsync
��2 B
(
��B C!
executionParameters
��C V
)
��V W
.
��W X
ConfigureAwait
��X f
(
��f g(
continueOnCapturedContext��g �
:��� �
false��� �
)��� �
;��� �
}
�� 
return
�� 
await
�� -
executeExitAndEntryActionsAsync
�� 8
(
��8 9!
executionParameters
��9 L
,
��L M
result
��N T
)
��T U
.
��U V
ConfigureAwait
��V d
(
��d e'
continueOnCapturedContext
��e ~
:
��~ 
false��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� 0
<
��0 1
TState
��1 7
,
��7 8
TTrigger
��9 A
>
��A B
>
��B C-
executeExitAndEntryActionsAsync
��D c
(
��c d!
ExecutionParameters
��d w
<
��w x
T
��x y
,
��y z
TTrigger��{ �
>��� �

parameters��� �
,��� �%
StateTransitionResult��� �
<��� �
TState��� �
,��� �
TTrigger��� �
>��� �
currentResult��� �
)��� �
{
�� 	
var
�� 
currentState
�� 
=
�� 
StateAccessor
�� ,
(
��, -

parameters
��- 7
.
��7 8
Context
��8 ?
)
��? @
;
��@ A
if
�� 
(
�� 
currentResult
�� 
.
�� 
WasTransitioned
�� -
&&
��. 0
!
��1 2
currentState
��2 >
.
��> ?
Equals
��? E
(
��E F
currentResult
��F S
.
��S T
StartingState
��T a
)
��a b
)
��b c
{
�� "
_stateConfigurations
�� $
.
��$ %
TryGetValue
��% 0
(
��0 1
currentResult
��1 >
.
��> ?
PreviousState
��? L
,
��L M
out
��N Q
var
��R U
previousState
��V c
)
��c d
;
��d e
if
�� 
(
�� 
!
�� 
	IsInState
�� 
(
�� 

parameters
�� )
.
��) *
Context
��* 1
,
��1 2
currentResult
��3 @
.
��@ A
PreviousState
��A N
)
��N O
)
��O P
{
�� 
await
�� 
previousState
�� '
.
��' ($
ExecuteExitActionAsync
��( >
(
��> ?

parameters
��? I
,
��I J
currentResult
��K X
)
��X Y
.
�� 
ConfigureAwait
�� '
(
��' ('
continueOnCapturedContext
��( A
:
��A B
false
��C H
)
��H I
;
��I J
}
�� 
if
�� 
(
�� "
_stateConfigurations
�� (
.
��( )
TryGetValue
��) 4
(
��4 5
currentResult
��5 B
.
��B C
CurrentState
��C O
,
��O P
out
��Q T
var
��U X
newState
��Y a
)
��a b
)
��b c
{
�� 
if
�� 
(
�� 
!
�� 
previousState
�� &
.
��& '
	IsInState
��' 0
(
��0 1
currentResult
��1 >
.
��> ?
CurrentState
��? K
)
��K L
)
��L M
{
�� 
await
�� 
newState
�� &
.
��& '%
ExecuteEntryActionAsync
��' >
(
��> ?

parameters
��? I
,
��I J
currentResult
��K X
)
��X Y
.
�� 
ConfigureAwait
�� *
(
��* +'
continueOnCapturedContext
��+ D
:
��D E
false
��F K
)
��K L
;
��L M
}
�� 
var
�� !
preAutoForwardState
�� +
=
��, -
currentResult
��. ;
.
��; <
CurrentState
��< H
;
��H I
var
�� "
autoTransitionResult
�� ,
=
��- .
await
��/ 4
newState
��5 =
.
��= >(
ExecuteAutoTransitionAsync
��> X
(
��X Y

parameters
��Y c
,
��c d
currentResult
��e r
)
��r s
.
�� 
ConfigureAwait
�� &
(
��& ''
continueOnCapturedContext
��' @
:
��@ A
false
��B G
)
��G H
;
��H I
if
�� 
(
�� "
autoTransitionResult
�� ,
.
��, -
WasTransitioned
��- <
)
��< =
{
�� 
currentResult
�� %
.
��% &
PreviousState
��& 3
=
��4 5
currentResult
��6 C
.
��C D
CurrentState
��D P
;
��P Q
currentResult
�� %
.
��% &
CurrentState
��& 2
=
��3 4"
autoTransitionResult
��5 I
.
��I J
CurrentState
��J V
;
��V W
currentResult
�� %
.
��% & 
LastTransitionName
��& 8
=
��9 :"
autoTransitionResult
��; O
.
��O P 
LastTransitionName
��P b
;
��b c
}
�� 
if
�� 
(
�� !
preAutoForwardState
�� +
.
��+ ,
	CompareTo
��, 5
(
��5 6
currentResult
��6 C
.
��C D
CurrentState
��D P
)
��P Q
!=
��R T
$num
��U V
)
��V W
{
�� 
await
�� -
executeExitAndEntryActionsAsync
�� =
(
��= >

parameters
��> H
,
��H I
currentResult
��J W
)
��W X
.
�� 
ConfigureAwait
�� *
(
��* +'
continueOnCapturedContext
��+ D
:
��D E
false
��F K
)
��K L
;
��L M
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� "
_stateConfigurations
�� )
.
��) *
TryGetValue
��* 5
(
��5 6
currentResult
��6 C
.
��C D
CurrentState
��D P
,
��P Q
out
��R U
var
��V Y
reenteredState
��Z h
)
��h i
)
��i j
{
�� 
await
�� 
reenteredState
�� $
.
��$ %'
ExecuteReentryActionAsync
��% >
(
��> ?

parameters
��? I
,
��I J
currentResult
��K X
)
��X Y
.
�� 
ConfigureAwait
�� "
(
��" #'
continueOnCapturedContext
��# <
:
��< =
false
��> C
)
��C D
;
��D E
}
�� 
var
�� !
transitionEventArgs
�� #
=
��$ %
new
��& )!
TransitionEventArgs
��* =
<
��= >
T
��> ?
,
��? @
TState
��A G
,
��G H
TTrigger
��I Q
>
��Q R
(
��R S

parameters
��S ]
,
��] ^
currentResult
��_ l
)
��l m
;
��m n
if
�� 
(
�� 
!
�� 
currentResult
�� 
.
�� 
WasTransitioned
�� .
)
��. /
{
�� 
if
�� 
(
�� 
!
�� 
currentResult
�� "
.
��" #
TransitionDefined
��# 4
)
��4 5
{
�� $
OnTriggerNotConfigured
�� (
?
��( )
.
��) *
Invoke
��* 0
(
��0 1
this
��1 5
,
��5 6!
transitionEventArgs
��7 J
)
��J K
;
��K L
}
��M N
OnNoTransition
�� 
?
�� 
.
��  
Invoke
��  &
(
��& '
this
��' +
,
��+ ,!
transitionEventArgs
��- @
)
��@ A
;
��A B
}
�� 
return
�� 
currentResult
��  
;
��  !
}
�� 	
public
�� 
bool
�� 
	IsInState
�� 
(
�� 
T
�� 
context
��  '
,
��' (
TState
��) /
state
��0 5
)
��5 6
{
�� 	
var
�� 
objectState
�� 
=
�� 
StateAccessor
�� +
(
��+ ,
context
��, 3
)
��3 4
;
��4 5
if
�� 
(
�� 
state
�� 
.
�� 
	CompareTo
�� 
(
��  
objectState
��  +
)
��+ ,
==
��- /
$num
��0 1
)
��1 2
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� "
_stateConfigurations
�� '
.
��' (
TryGetValue
��( 3
(
��3 4
objectState
��4 ?
,
��? @
out
��A D
var
��E H&
objectStateConfiguration
��I a
)
��a b
&&
�� &
objectStateConfiguration
�� .
.
��. /
	IsInState
��/ 8
(
��8 9
state
��9 >
)
��> ?
;
��? @
}
�� 	
public
��  
IStateMachineAsync
�� !
<
��! "
T
��" #
,
��# $
TState
��% +
,
��+ ,
TTrigger
��- 5
>
��5 6*
RegisterOnTransitionedAction
��7 S
(
��S T
Action
��T Z
<
��Z [
T
��[ \
,
��\ ]#
StateTransitionResult
��^ s
<
��s t
TState
��t z
,
��z {
TTrigger��| �
>��� �
>��� �#
onTransitionedEvent��� �
)��� �
{
�� 	!
StateTransitionBase
�� 
<
��  
T
��  !
,
��! "
TState
��# )
,
��) *
TTrigger
��+ 3
>
��3 4
.
��4 5!
OnTransitionedEvent
��5 H
+=
��I K!
onTransitionedEvent
��L _
;
��_ `
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
QC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransition.cs
	namespace 	
NStateManager
 
{ 
internal 
class 
StateTransition "
<" #
T# $
,$ %
TState& ,
,, -
TTrigger. 6
>6 7
:8 9%
StateTransitionNonDynamic: S
<S T
TT U
,U V
TStateW ]
,] ^
TTrigger_ g
>g h
{ 
public 
Func 
< 
T 
, 
bool 
> 
	Condition &
{' (
get) ,
;, -
}. /
public 
StateTransition 
( 
Func #
<# $
T$ %
,% &
TState' -
>- .
stateAccessor/ <
,< =
Action> D
<D E
TE F
,F G
TStateH N
>N O
stateMutatorP \
,\ ]
TState^ d
toStatee l
,l m
Funcn r
<r s
Ts t
,t u
boolv z
>z {
	condition	| �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
toState0 7
,7 8
name9 =
,= >
priority? G
)G H
{ 	
	Condition 
= 
	condition !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
	conditionL U
)U V
)V W
;W X
} 	
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
=B C
nullD H
)H I
{ 	
return 
ExecutePrim 
( 

parameters )
,) *
currentResult+ 8
,8 9
	Condition: C
(C D

parametersD N
.N O
ContextO V
)V W
)W X
;X Y
} 	
} 
} �,
VC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class  
StateTransitionAsync '
<' (
T( )
,) *
TState+ 1
,1 2
TTrigger3 ;
>; <
:= >%
StateTransitionNonDynamic? X
<X Y
TY Z
,Z [
TState\ b
,b c
TTriggerd l
>l m
{ 
public 
Func 
< 
T 
, 
CancellationToken (
,( )
Task* .
<. /
bool/ 3
>3 4
>4 5
ConditionAsync6 D
{E F
getG J
;J K
}L M
public  
StateTransitionAsync #
(# $
Func$ (
<( )
T) *
,* +
TState, 2
>2 3
stateAccessor4 A
,A B
ActionC I
<I J
TJ K
,K L
TStateM S
>S T
stateMutatorU a
,a b
TStatec i
toStatej q
,q r
Funcs w
<w x
Tx y
,y z
CancellationToken	{ �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
toState0 7
,7 8
name9 =
,= >
priority? G
)G H
{ 	
ConditionAsync 
= 
conditionAsync +
??, .
throw/ 4
new5 8!
ArgumentNullException9 N
(N O
nameofO U
(U V
conditionAsyncV d
)d e
)e f
;f g
} 	
public 
override 
async 
Task "
<" #!
StateTransitionResult# 8
<8 9
TState9 ?
,? @
TTriggerA I
>I J
>J K
ExecuteAsyncL X
(X Y
ExecutionParametersY l
<l m
Tm n
,n o
TTriggerp x
>x y

parameters	z �
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
=B C
nullD H
)H I
{ 	
var 

startState 
= 
currentResult *
!=+ -
null. 2
?3 4
currentResult5 B
.B C
StartingStateC P
:Q R
StateAccessorS `
(` a

parametersa k
.k l
Contextl s
)s t
;t u
if   
(   

parameters   
.   
CancellationToken   ,
.  , -#
IsCancellationRequested  - D
)  D E
{!! 
return!! 
GetFreshResult!! #
(!!# $

parameters!!$ .
,!!. /
currentResult!!0 =
,!!= >

startState!!? I
,!!I J
wasCancelled!!K W
:!!W X
true!!Y ]
,!!] ^
transitionDefined!!_ p
:!!p q
true!!r v
,!!v w
conditionMet	!!x �
:
!!� �
false
!!� �
)
!!� �
;
!!� �
}
!!� �
if## 
(## 
!## 
await## 
ConditionAsync## %
(##% &

parameters##& 0
.##0 1
Context##1 8
,##8 9

parameters##: D
.##D E
CancellationToken##E V
)##V W
.$$ 
ConfigureAwait$$ 
($$ %
continueOnCapturedContext$$ 8
:$$8 9
false$$: ?
)$$? @
)$$@ A
{%% 
return%% 
GetFreshResult%% #
(%%# $

parameters%%$ .
,%%. /
currentResult%%0 =
,%%= >

startState%%? I
,%%I J
wasCancelled%%K W
:%%W X

parameters%%Y c
.%%c d
CancellationToken%%d u
.%%u v$
IsCancellationRequested	%%v �
,
%%� �
transitionDefined
%%� �
:
%%� �
true
%%� �
,
%%� �
conditionMet
%%� �
:
%%� �
false
%%� �
)
%%� �
;
%%� �
}
%%� �
StateMutator'' 
('' 

parameters'' #
.''# $
Context''$ +
,''+ ,
ToState''- 4
)''4 5
;''5 6
var(( 
transitionResult((  
=((! "
GetFreshResult((# 1
(((1 2

parameters((2 <
,((< =
currentResult((> K
,((K L

startState((M W
,((W X
wasCancelled((Y e
:((e f
false((g l
,((l m
conditionMet((n z
:((z {
true	((| �
,
((� �
transitionDefined
((� �
:
((� �
true
((� �
)
((� �
;
((� �
NotifyOfTransition)) 
()) 

parameters)) )
.))) *
Context))* 1
,))1 2
transitionResult))3 C
)))C D
;))D E
return++ 
transitionResult++ #
;++# $
},, 	
}-- 
}.. �-
\C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoDynamic.cs
	namespace 	
NStateManager
 
{ 
internal 
class &
StateTransitionAutoDynamic -
<- .
T. /
,/ 0
TState1 7
,7 8
TTrigger9 A
>A B
:C D&
StateTransitionDynamicBaseE _
<_ `
T` a
,a b
TStatec i
,i j
TTriggerk s
>s t
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
private 
readonly 
Func 
< 
T 
,  
TState! '
>' (
_stateFunction) 7
;7 8
public &
StateTransitionAutoDynamic )
() *
IStateMachine* 7
<7 8
T8 9
,9 :
TState; A
,A B
TTriggerC K
>K L
stateMachineM Y
,
 
TState 

startState 
,
 
Func 
< 
T 
, 
TState 
> 
targetStateFunction /
,
 
TState 
triggerState 
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
nameJ N
,N O
priorityP X
)X Y
{ 	
_stateMachine 
= 
stateMachine (
;( )
_startState   
=   

startState   $
;  $ %
_triggerState!! 
=!! 
triggerState!! (
;!!( )
_stateFunction"" 
="" 
targetStateFunction"" 0
;""0 1
}## 	
public%% 
override%% !
StateTransitionResult%% -
<%%- .
TState%%. 4
,%%4 5
TTrigger%%6 >
>%%> ?
Execute%%@ G
(%%G H
ExecutionParameters%%H [
<%%[ \
T%%\ ]
,%%] ^
TTrigger%%_ g
>%%g h

parameters%%i s
,&&
 !
StateTransitionResult&& !
<&&! "
TState&&" (
,&&( )
TTrigger&&* 2
>&&2 3
currentResult&&4 A
=&&B C
null&&D H
)&&H I
{'' 	
if(( 
((( 
currentResult(( 
!=((  
null((! %
&&)) 
_startState)) 
.)) 
IsEqual)) &
())& '
currentResult))' 4
.))4 5
PreviousState))5 B
)))B C
&&** 
(** 
_triggerState** !
.**! "
IsEqual**" )
(**) *
currentResult*** 7
.**7 8
CurrentState**8 D
)**D E
||++ 
_stateMachine++ $
.++$ %
	IsInState++% .
(++. /

parameters++/ 9
.++9 :
Context++: A
,++A B
_triggerState++C P
)++P Q
)++Q R
)++R S
{,, 
StateMutator-- 
(-- 

parameters-- '
.--' (
Context--( /
,--/ 0
_stateFunction--1 ?
.--? @
Invoke--@ F
(--F G

parameters--G Q
.--Q R
Context--R Y
)--Y Z
)--Z [
;--[ \
var// 
transitioned//  
=//! "
!//# $
StateAccessor//$ 1
(//1 2

parameters//2 <
.//< =
Context//= D
)//D E
.//E F
IsEqual//F M
(//M N
_triggerState//N [
)//[ \
;//\ ]
var00 
result00 
=00 
GetFreshResult00 +
(00+ ,

parameters00, 6
,11 
currentResult11 !
,22 
currentResult22 !
.22! "
StartingState22" /
,33 
wasCancelled33  
:33  !
false33" '
,44 
transitionDefined44 %
:44% &
true44' +
,55 
conditionMet55  
:55  !
transitioned55" .
)55. /
;55/ 0
if66 
(66 
transitioned66  
)66  !
{77 
NotifyOfTransition77 $
(77$ %

parameters77% /
.77/ 0
Context770 7
,777 8
result779 ?
)77? @
;77@ A
}77B C
return99 
result99 
;99 
}:: 
return<< 
GetFreshResult<< !
(<<! "

parameters<<" ,
,== 
currentResult== 
,>> 
StateAccessor>> 
(>> 

parameters>> (
.>>( )
Context>>) 0
)>>0 1
,?? 
wasCancelled?? 
:?? 
false?? #
,@@ 
conditionMet@@ 
:@@ 
false@@ #
,AA 
transitionDefinedAA !
:AA! "
trueAA# '
)AA' (
;AA( )
}BB 	
}CC 
}DD �2
aC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoDynamicAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class +
StateTransitionAutoDynamicAsync 2
<2 3
T3 4
,4 5
TState6 <
,< =
TTrigger> F
>F G
:H I&
StateTransitionDynamicBaseJ d
<d e
Te f
,f g
TStateh n
,n o
TTriggerp x
>x y
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
private 
readonly 
Func 
< 
T 
,  
TState! '
>' (
_stateFunction) 7
;7 8
public +
StateTransitionAutoDynamicAsync .
(. /
IStateMachineAsync/ A
<A B
TB C
,C D
TStateE K
,K L
TTriggerM U
>U V
stateMachineW c
,
 
TState 
startStartState "
,
 
Func 
< 
T 
, 
TState 
> 
targetStateFunction /
,
 
TState 
triggerState 
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
nameJ N
,N O
priorityP X
)X Y
{ 	
_stateMachine   
=   
stateMachine   (
;  ( )
_startState!! 
=!! 
startStartState!! )
;!!) *
_triggerState"" 
="" 
triggerState"" (
;""( )
_stateFunction## 
=## 
targetStateFunction## 0
;##0 1
}$$ 	
public&& 
override&& 
Task&& 
<&& !
StateTransitionResult&& 2
<&&2 3
TState&&3 9
,&&9 :
TTrigger&&; C
>&&C D
>&&D E
ExecuteAsync&&F R
(&&R S
ExecutionParameters&&S f
<&&f g
T&&g h
,&&h i
TTrigger&&j r
>&&r s

parameters&&t ~
,''
 !
StateTransitionResult'' !
<''! "
TState''" (
,''( )
TTrigger''* 2
>''2 3
currentResult''4 A
=''B C
null''D H
)''H I
{(( 	
if)) 
()) 
currentResult)) 
!=))  
null))! %
&&** 
!** 

parameters** 
.** 
CancellationToken** 0
.**0 1#
IsCancellationRequested**1 H
&&++ 
_startState++ 
.++ 
IsEqual++ &
(++& '
currentResult++' 4
.++4 5
PreviousState++5 B
)++B C
&&,, 
(,, 
_triggerState,, !
.,,! "
IsEqual,," )
(,,) *
currentResult,,* 7
.,,7 8
CurrentState,,8 D
),,D E
||-- 
_stateMachine-- $
.--$ %
	IsInState--% .
(--. /

parameters--/ 9
.--9 :
Context--: A
,--A B
_triggerState--C P
)--P Q
)--Q R
)--R S
{.. 
StateMutator// 
(// 

parameters// '
.//' (
Context//( /
,/// 0
_stateFunction//1 ?
.//? @
Invoke//@ F
(//F G

parameters//G Q
.//Q R
Context//R Y
)//Y Z
)//Z [
;//[ \
var11 
transitioned11  
=11! "
!11# $
StateAccessor11$ 1
(111 2

parameters112 <
.11< =
Context11= D
)11D E
.11E F
IsEqual11F M
(11M N
_triggerState11N [
)11[ \
;11\ ]
var22 
result22 
=22 
GetFreshResult22 +
(22+ ,

parameters22, 6
,33 
currentResult33 !
,44 
currentResult44 !
.44! "
StartingState44" /
,55 
wasCancelled55  
:55  !

parameters55" ,
.55, -
CancellationToken55- >
.55> ?#
IsCancellationRequested55? V
,66 
transitionDefined66 %
:66% &
true66' +
,77 
conditionMet77  
:77  !
transitioned77" .
)77. /
;77/ 0
if88 
(88 
transitioned88  
)88  !
{99 
NotifyOfTransition99 $
(99$ %

parameters99% /
.99/ 0
Context990 7
,997 8
result999 ?
)99? @
;99@ A
}99B C
return;; 
Task;; 
.;; 

FromResult;; &
(;;& '
result;;' -
);;- .
;;;. /
}<< 
return>> 
Task>> 
.>> 

FromResult>> "
(>>" #
GetFreshResult>># 1
(>>1 2

parameters>>2 <
,?? 
currentResult?? 
,@@ 
StateAccessor@@ 
(@@ 

parameters@@ (
.@@( )
Context@@) 0
)@@0 1
,AA 
wasCancelledAA 
:AA 

parametersAA (
.AA( )
CancellationTokenAA) :
.AA: ;#
IsCancellationRequestedAA; R
,BB 
transitionDefinedBB !
:BB! "
trueBB# '
,CC 
conditionMetCC 
:CC 
falseCC #
)CC# $
)CC$ %
;CC% &
}DD 	
}EE 
}FF �6
iC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoDynamicParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class 3
'StateTransitionAutoDynamicParameterized :
<: ;
T; <
,< =
TState> D
,D E
TTriggerF N
,N O
TRequestP X
>X Y
:Z [&
StateTransitionDynamicBase\ v
<v w
Tw x
,x y
TState	z �
,
� �
TTrigger
� �
>
� �
where 
TState 
: 
IComparable "
where 
TRequest 
: 
class 
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
private 
readonly 
Func 
< 
T 
,  
TRequest! )
,) *
TState+ 1
>1 2
_stateFunction3 A
;A B
public 3
'StateTransitionAutoDynamicParameterized 6
(6 7
IStateMachine7 D
<D E
TE F
,F G
TStateH N
,N O
TTriggerP X
>X Y
stateMachineZ f
,
 
TState 

startState 
,
 
Func 
< 
T 
, 
TRequest 
, 
TState $
>$ %
targetStateFunction& 9
,
 
TState 
triggerState 
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
nameJ N
,N O
priorityP X
)X Y
{ 	
_stateMachine   
=   
stateMachine   (
;  ( )
_startState!! 
=!! 

startState!! $
;!!$ %
_triggerState"" 
="" 
triggerState"" (
;""( )
_stateFunction## 
=## 
targetStateFunction## 0
;##0 1
}$$ 	
public&& 
override&& !
StateTransitionResult&& -
<&&- .
TState&&. 4
,&&4 5
TTrigger&&6 >
>&&> ?
Execute&&@ G
(&&G H
ExecutionParameters&&H [
<&&[ \
T&&\ ]
,&&] ^
TTrigger&&_ g
>&&g h

parameters&&i s
,''
 !
StateTransitionResult'' !
<''! "
TState''" (
,''( )
TTrigger''* 2
>''2 3
currentResult''4 A
=''B C
null''D H
)''H I
{(( 	
if)) 
()) 
!)) 
()) 

parameters)) 
.)) 
Request)) $
is))% '
TRequest))( 0
typeSafeParam))1 >
)))> ?
)))? @
{** 
throw** 
new** 
ArgumentException** )
(**) *
$"*** ,
Expected a **, 7
{**7 8
typeof**8 >
(**> ?
TRequest**? G
)**G H
.**H I
Name**I M
}**M N'
 parameter, but received a **N i
{**i j

parameters**j t
.**t u
Request**u |
?**| }
.**} ~
GetType	**~ �
(
**� �
)
**� �
.
**� �
Name
**� �
??
**� �
$str
**� �
}
**� �
.
**� �
"
**� �
)
**� �
;
**� �
}
**� �
if,, 
(,, 
currentResult,, 
!=,,  
null,,! %
&&-- 
_startState-- 
.-- 
IsEqual-- &
(--& '
currentResult--' 4
.--4 5
PreviousState--5 B
)--B C
&&.. 
(.. 
_triggerState.. !
...! "
IsEqual.." )
(..) *
currentResult..* 7
...7 8
CurrentState..8 D
)..D E
||// 
_stateMachine// $
.//$ %
	IsInState//% .
(//. /

parameters/// 9
.//9 :
Context//: A
,//A B
_triggerState//C P
)//P Q
)//Q R
)//R S
{00 
StateMutator11 
(11 

parameters11 '
.11' (
Context11( /
,11/ 0
_stateFunction111 ?
(11? @

parameters11@ J
.11J K
Context11K R
,11R S
typeSafeParam11T a
)11a b
)11b c
;11c d
var33 
transitioned33  
=33! "
!33# $
StateAccessor33$ 1
(331 2

parameters332 <
.33< =
Context33= D
)33D E
.33E F
IsEqual33F M
(33M N
_triggerState33N [
)33[ \
;33\ ]
var44 
result44 
=44 
GetFreshResult44 +
(44+ ,

parameters44, 6
,55 
currentResult55 !
,66 
currentResult66 !
.66! "
StartingState66" /
,77 
wasCancelled77  
:77  !
false77" '
,88 
transitionDefined88 %
:88% &
true88' +
,99 
conditionMet99  
:99  !
transitioned99" .
)99. /
;99/ 0
if:: 
(:: 
transitioned::  
)::  !
{;; 
NotifyOfTransition;; $
(;;$ %

parameters;;% /
.;;/ 0
Context;;0 7
,;;7 8
result;;9 ?
);;? @
;;;@ A
};;B C
return== 
result== 
;== 
}>> 
return@@ 
GetFreshResult@@ !
(@@! "

parameters@@" ,
,AA 
currentResultAA 
,BB 
StateAccessorBB 
(BB 

parametersBB (
.BB( )
ContextBB) 0
)BB0 1
,CC 
wasCancelledCC 
:CC 
falseCC #
,DD 
conditionMetDD 
:DD 
falseDD #
,EE 
transitionDefinedEE !
:EE! "
trueEE# '
)EE' (
;EE( )
}FF 	
}GG 
}HH �8
nC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoDynamicParameterizedAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class 8
,StateTransitionAutoDynamicParameterizedAsync ?
<? @
T@ A
,A B
TStateC I
,I J
TTriggerK S
,S T
TRequestU ]
>] ^
:_ `&
StateTransitionDynamicBasea {
<{ |
T| }
,} ~
TState	 �
,
� �
TTrigger
� �
>
� �
where 
TState 
: 
IComparable "
where 
TRequest 
: 
class 
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
private 
readonly 
Func 
< 
T 
,  
TRequest! )
,) *
TState+ 1
>1 2
_stateFunction3 A
;A B
public 8
,StateTransitionAutoDynamicParameterizedAsync ;
(; <
IStateMachineAsync< N
<N O
TO P
,P Q
TStateR X
,X Y
TTriggerZ b
>b c
stateMachined p
,
 
TState 

startState 
,
 
Func 
< 
T 
, 
TRequest 
, 
TState $
>$ %
targetStateFunction& 9
,
 
TState 
triggerState 
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
nameJ N
,N O
priorityP X
)X Y
{ 	
_stateMachine   
=   
stateMachine   (
;  ( )
_startState!! 
=!! 

startState!! $
;!!$ %
_triggerState"" 
="" 
triggerState"" (
;""( )
_stateFunction## 
=## 
targetStateFunction## 0
;##0 1
}$$ 	
public&& 
override&& !
StateTransitionResult&& -
<&&- .
TState&&. 4
,&&4 5
TTrigger&&6 >
>&&> ?
Execute&&@ G
(&&G H
ExecutionParameters&&H [
<&&[ \
T&&\ ]
,&&] ^
TTrigger&&_ g
>&&g h

parameters&&i s
,''
 !
StateTransitionResult'' !
<''! "
TState''" (
,''( )
TTrigger''* 2
>''2 3
currentResult''4 A
=''B C
null''D H
)''H I
{(( 	
if)) 
()) 
!)) 
()) 

parameters)) 
.)) 
Request)) $
is))% '
TRequest))( 0
typeSafeParam))1 >
)))> ?
)))? @
{** 
throw** 
new** 
ArgumentException** )
(**) *
$"*** ,
Expected a **, 7
{**7 8
typeof**8 >
(**> ?
TRequest**? G
)**G H
.**H I
Name**I M
}**M N'
 parameter, but received a **N i
{**i j

parameters**j t
.**t u
Request**u |
?**| }
.**} ~
GetType	**~ �
(
**� �
)
**� �
.
**� �
Name
**� �
??
**� �
$str
**� �
}
**� �
.
**� �
"
**� �
)
**� �
;
**� �
}
**� �
if,, 
(,, 
currentResult,, 
!=,,  
null,,! %
&&-- 
!-- 

parameters-- 
.-- 
CancellationToken-- 0
.--0 1#
IsCancellationRequested--1 H
&&.. 
_startState.. 
... 
IsEqual.. &
(..& '
currentResult..' 4
...4 5
PreviousState..5 B
)..B C
&&// 
(// 
_triggerState// !
.//! "
IsEqual//" )
(//) *
currentResult//* 7
.//7 8
CurrentState//8 D
)//D E
||00 
_stateMachine00 $
.00$ %
	IsInState00% .
(00. /

parameters00/ 9
.009 :
Context00: A
,00A B
_triggerState00C P
)00P Q
)00Q R
)00R S
{11 
StateMutator22 
(22 

parameters22 '
.22' (
Context22( /
,22/ 0
_stateFunction221 ?
(22? @

parameters22@ J
.22J K
Context22K R
,22R S
typeSafeParam22T a
)22a b
)22b c
;22c d
var44 
transitioned44  
=44! "
!44# $
StateAccessor44$ 1
(441 2

parameters442 <
.44< =
Context44= D
)44D E
.44E F
IsEqual44F M
(44M N
_triggerState44N [
)44[ \
;44\ ]
var55 
result55 
=55 
GetFreshResult55 +
(55+ ,

parameters55, 6
,66 
currentResult66 !
,77 
currentResult77 !
.77! "
StartingState77" /
,88 
wasCancelled88  
:88  !
false88" '
,99 
transitionDefined99 %
:99% &
true99' +
,:: 
conditionMet::  
:::  !
transitioned::" .
)::. /
;::/ 0
if;; 
(;; 
transitioned;;  
);;  !
{<< 
NotifyOfTransition<< $
(<<$ %

parameters<<% /
.<</ 0
Context<<0 7
,<<7 8
result<<9 ?
)<<? @
;<<@ A
}<<B C
return>> 
result>> 
;>> 
}?? 
returnAA 
GetFreshResultAA !
(AA! "

parametersAA" ,
,BB 
currentResultBB 
,CC 
StateAccessorCC 
(CC 

parametersCC (
.CC( )
ContextCC) 0
)CC0 1
,DD 
wasCancelledDD 
:DD 

parametersDD (
.DD( )
CancellationTokenDD) :
.DD: ;#
IsCancellationRequestedDD; R
,EE 
transitionDefinedEE !
:EE! "
trueEE# '
,FF 
conditionMetFF 
:FF 
falseFF #
)FF# $
;FF$ %
}GG 	
}HH 
}II �"
]C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoFallback.cs
	namespace 	
NStateManager
 
{ 
internal 
class '
StateTransitionAutoFallback .
<. /
T/ 0
,0 1
TState2 8
,8 9
TTrigger: B
>B C
:D E
StateTransitionF U
<U V
TV W
,W X
TStateY _
,_ `
TTriggera i
>i j
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
public '
StateTransitionAutoFallback *
(* +
IStateMachine+ 8
<8 9
T9 :
,: ;
TState< B
,B C
TTriggerD L
>L M
stateMachineN Z
,
 
TState 

startState 
,
 
TState 
triggerState 
,
 
TState 
toState 
,
 
Func 
< 
T 
, 
bool 
> 
	condition #
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
	conditionS \
,\ ]
name^ b
,b c
priorityd l
)l m
{ 	
_stateMachine 
= 
stateMachine (
;( )
_startState   
=   

startState   $
;  $ %
_triggerState!! 
=!! 
triggerState!! (
;!!( )
}"" 	
public$$ 
override$$ !
StateTransitionResult$$ -
<$$- .
TState$$. 4
,$$4 5
TTrigger$$6 >
>$$> ?
Execute$$@ G
($$G H
ExecutionParameters$$H [
<$$[ \
T$$\ ]
,$$] ^
TTrigger$$_ g
>$$g h

parameters$$i s
,%%
 !
StateTransitionResult%% !
<%%! "
TState%%" (
,%%( )
TTrigger%%* 2
>%%2 3
currentResult%%4 A
=%%B C
null%%D H
)%%H I
{&& 	
if'' 
('' 
currentResult'' 
!=''  
null''! %
&&(( 
_startState(( 
.(( 
IsEqual(( &
(((& '
currentResult((' 4
.((4 5
PreviousState((5 B
)((B C
&&)) 
()) 
_triggerState)) !
.))! "
IsEqual))" )
())) *
currentResult))* 7
.))7 8
CurrentState))8 D
)))D E
||** 
_stateMachine** $
.**$ %
	IsInState**% .
(**. /

parameters**/ 9
.**9 :
Context**: A
,**A B
_triggerState**C P
)**P Q
)**Q R
)**R S
{++ 
return++ 
base++ 
.++ 
Execute++ !
(++! "

parameters++" ,
,++, -
currentResult++. ;
)++; <
;++< =
}++> ?
return-- 
GetFreshResult-- !
(--! "

parameters--" ,
,.. 
currentResult.. 
,// 
StateAccessor// 
(// 

parameters// (
.//( )
Context//) 0
)//0 1
,00 
wasCancelled00 
:00 
false00 #
,11 
transitionDefined11 !
:11! "
true11# '
,22 
conditionMet22 
:22 
false22 #
)22# $
;22$ %
}33 	
}44 
}55 �&
bC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoFallbackAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class ,
 StateTransitionAutoFallbackAsync 3
<3 4
T4 5
,5 6
TState7 =
,= >
TTrigger? G
>G H
:I J 
StateTransitionAsyncK _
<_ `
T` a
,a b
TStatec i
,i j
TTriggerk s
>s t
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
public ,
 StateTransitionAutoFallbackAsync /
(/ 0
IStateMachineAsync0 B
<B C
TC D
,D E
TStateF L
,L M
TTriggerN V
>V W
stateMachineX d
,d e
TStatef l

startStatem w
,w x
TStatey 
triggerState
� �
,
� �
TState
� �
toState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
conditionAsyncS a
,a b
namec g
,g h
priorityi q
)q r
{ 	
_stateMachine 
= 
stateMachine (
;( )
_startState 
= 

startState $
;$ %
_triggerState 
= 
triggerState (
;( )
} 	
public   
override   
async   
Task   "
<  " #!
StateTransitionResult  # 8
<  8 9
TState  9 ?
,  ? @
TTrigger  A I
>  I J
>  J K
ExecuteAsync  L X
(  X Y
ExecutionParameters  Y l
<  l m
T  m n
,  n o
TTrigger  p x
>  x y

parameters	  z �
,!!
 !
StateTransitionResult!! !
<!!! "
TState!!" (
,!!( )
TTrigger!!* 2
>!!2 3
currentResult!!4 A
=!!B C
null!!D H
)!!H I
{"" 	
if## 
(## 
currentResult## 
!=##  
null##! %
&&$$ 
!$$ 

parameters$$ 
.$$ 
CancellationToken$$ 0
.$$0 1#
IsCancellationRequested$$1 H
&&%% 
_startState%% 
.%% 
IsEqual%% &
(%%& '
currentResult%%' 4
.%%4 5
PreviousState%%5 B
)%%B C
&&&& 
(&& 
_triggerState&& !
.&&! "
IsEqual&&" )
(&&) *
currentResult&&* 7
.&&7 8
CurrentState&&8 D
)&&D E
||'' 
_stateMachine'' $
.''$ %
	IsInState''% .
(''. /

parameters''/ 9
.''9 :
Context'': A
,''A B
_triggerState''C P
)''P Q
)''Q R
)''R S
{(( 
return(( 
await(( 
base(( 
.((  
ExecuteAsync((  ,
(((, -

parameters((- 7
,((7 8
currentResult((9 F
)((F G
;((G H
}((I J
return** 
GetFreshResult** !
(**! "

parameters**" ,
,++ 
currentResult++ 
,,, 
StateAccessor,, 
(,, 

parameters,, (
.,,( )
Context,,) 0
),,0 1
,-- 
wasCancelled-- 
:-- 

parameters-- (
.--( )
CancellationToken--) :
.--: ;#
IsCancellationRequested--; R
,.. 
transitionDefined.. !
:..! "
true..# '
,// 
conditionMet// 
:// 
false// #
)//# $
;//$ %
}00 	
}11 
}22 �$
jC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoFallbackParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class 4
(StateTransitionAutoFallbackParameterized ;
<; <
T< =
,= >
TState? E
,E F
TTriggerG O
,O P
TParamQ W
>W X
:Y Z(
StateTransitionParameterized[ w
<w x
Tx y
,y z
TState	{ �
,
� �
TTrigger
� �
,
� �
TParam
� �
>
� �
where 
TState 
: 
IComparable "
where 
TParam 
: 
class 
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
public 4
(StateTransitionAutoFallbackParameterized 7
(7 8
IStateMachine8 E
<E F
TF G
,G H
TStateI O
,O P
TTriggerQ Y
>Y Z
stateMachine[ g
,
 
TState 

startState 
,
 
TState 
triggerState 
,
 
TState 
toState 
,
 
Func 
< 
T 
, 
TParam 
, 
bool  
>  !
	condition" +
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
	conditionS \
,\ ]
name^ b
,b c
priorityd l
)l m
{ 	
_stateMachine   
=   
stateMachine   (
;  ( )
_startState!! 
=!! 

startState!! $
;!!$ %
_triggerState"" 
="" 
triggerState"" (
;""( )
}## 	
public%% 
override%% !
StateTransitionResult%% -
<%%- .
TState%%. 4
,%%4 5
TTrigger%%6 >
>%%> ?
Execute%%@ G
(%%G H
ExecutionParameters%%H [
<%%[ \
T%%\ ]
,%%] ^
TTrigger%%_ g
>%%g h

parameters%%i s
,&&
 !
StateTransitionResult&& !
<&&! "
TState&&" (
,&&( )
TTrigger&&* 2
>&&2 3
currentResult&&4 A
=&&B C
null&&D H
)&&H I
{'' 	
if(( 
((( 
currentResult(( 
!=((  
null((! %
&&)) 
_startState)) 
.)) 
IsEqual)) &
())& '
currentResult))' 4
.))4 5
PreviousState))5 B
)))B C
&&** 
(** 
_triggerState** !
.**! "
IsEqual**" )
(**) *
currentResult*** 7
.**7 8
CurrentState**8 D
)**D E
||++ 
_stateMachine++ $
.++$ %
	IsInState++% .
(++. /

parameters++/ 9
.++9 :
Context++: A
,++A B
_triggerState++C P
)++P Q
)++Q R
)++R S
{,, 
return,, 
base,, 
.,, 
Execute,, !
(,,! "

parameters,," ,
,,,, -
currentResult,,. ;
),,; <
;,,< =
},,> ?
return.. 
GetFreshResult.. !
(..! "

parameters.." ,
,// 
currentResult// 
,00 
StateAccessor00 
(00 

parameters00 (
.00( )
Context00) 0
)000 1
,11 
wasCancelled11 
:11 
false11 #
,22 
transitionDefined22 !
:22! "
true22# '
,33 
conditionMet33 
:33 
false33 #
)33# $
;33$ %
}44 	
}55 
}66 �(
oC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoFallbackParameterizedAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class 9
-StateTransitionAutoFallbackParameterizedAsync @
<@ A
TA B
,B C
TStateD J
,J K
TTriggerL T
,T U
TParamV \
>\ ]
:^ _.
!StateTransitionParameterizedAsync	` �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
,
� �
TParam
� �
>
� �
where 
TParam 
: 
class 
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_startState  +
;+ ,
private 
readonly 
TState 
_triggerState  -
;- .
public 9
-StateTransitionAutoFallbackParameterizedAsync <
(< =
IStateMachineAsync= O
<O P
TP Q
,Q R
TStateS Y
,Y Z
TTrigger[ c
>c d
stateMachinee q
,q r
TStates y

startState	z �
,
� �
TState
� �
toState
� �
,
� �
TState
� �
triggerState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
TParam
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
conditionAsyncS a
,a b
namec g
,g h
priorityi q
)q r
{ 	
_stateMachine 
= 
stateMachine (
;( )
_startState 
= 

startState $
;$ %
_triggerState 
= 
triggerState (
;( )
} 	
public!! 
override!! 
async!! 
Task!! "
<!!" #!
StateTransitionResult!!# 8
<!!8 9
TState!!9 ?
,!!? @
TTrigger!!A I
>!!I J
>!!J K
ExecuteAsync!!L X
(!!X Y
ExecutionParameters!!Y l
<!!l m
T!!m n
,!!n o
TTrigger!!p x
>!!x y

parameters	!!z �
,""
 !
StateTransitionResult"" !
<""! "
TState""" (
,""( )
TTrigger""* 2
>""2 3
currentResult""4 A
=""B C
null""D H
)""H I
{## 	
if$$ 
($$ 
currentResult$$ 
!=$$  
null$$! %
&&%% 
!%% 

parameters%% 
.%% 
CancellationToken%% 0
.%%0 1#
IsCancellationRequested%%1 H
&&&& 
_startState&& 
.&& 
IsEqual&& &
(&&& '
currentResult&&' 4
.&&4 5
PreviousState&&5 B
)&&B C
&&'' 
('' 
_triggerState'' !
.''! "
IsEqual''" )
('') *
currentResult''* 7
.''7 8
CurrentState''8 D
)''D E
||(( 
_stateMachine(( !
.((! "
	IsInState((" +
(((+ ,

parameters((, 6
.((6 7
Context((7 >
,((> ?
_triggerState((@ M
)((M N
)((N O
)((O P
{)) 
return)) 
await)) 
base)) 
.))  
ExecuteAsync))  ,
()), -

parameters))- 7
,))7 8
currentResult))9 F
)))F G
;))G H
}))I J
return++ 
GetFreshResult++ !
(++! "

parameters++" ,
,,, 
currentResult,, 
,-- 
StateAccessor-- 
(-- 

parameters-- (
.--( )
Context--) 0
)--0 1
,.. 
wasCancelled.. 
:.. 

parameters.. (
...( )
CancellationToken..) :
...: ;#
IsCancellationRequested..; R
,// 
transitionDefined// !
://! "
true//# '
,00 
conditionMet00 
:00 
false00 #
)00# $
;00$ %
}11 	
}22 
}33 �
\C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoForward.cs
	namespace 	
NStateManager
 
{ 
internal 
class &
StateTransitionAutoForward -
<- .
T. /
,/ 0
TState1 7
,7 8
TTrigger9 A
>A B
:C D
StateTransitionE T
<T U
TU V
,V W
TStateX ^
,^ _
TTrigger` h
>h i
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_triggerState  -
;- .
public &
StateTransitionAutoForward )
() *
IStateMachine* 7
<7 8
T8 9
,9 :
TState; A
,A B
TTriggerC K
>K L
stateMachineM Y
,
 
TState 
triggerState 
,
 
TState 
toState 
,
 
Func 
< 
T 
, 
bool 
> 
	condition #
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
	conditionS \
,\ ]
name^ b
,b c
priorityd l
)l m
{ 	
_stateMachine 
= 
stateMachine (
;( )
_triggerState 
= 
triggerState (
;( )
} 	
public!! 
override!! !
StateTransitionResult!! -
<!!- .
TState!!. 4
,!!4 5
TTrigger!!6 >
>!!> ?
Execute!!@ G
(!!G H
ExecutionParameters!!H [
<!![ \
T!!\ ]
,!!] ^
TTrigger!!_ g
>!!g h

parameters!!i s
,""
 !
StateTransitionResult"" !
<""! "
TState""" (
,""( )
TTrigger""* 2
>""2 3
currentResult""4 A
=""B C
null""D H
)""H I
{## 	
if$$ 
($$ 
currentResult$$ 
!=$$  
null$$! %
&&%% 
(%% 
_triggerState%% !
.%%! "
IsEqual%%" )
(%%) *
currentResult%%* 7
.%%7 8
CurrentState%%8 D
)%%D E
||&& 
_stateMachine&& $
.&&$ %
	IsInState&&% .
(&&. /

parameters&&/ 9
.&&9 :
Context&&: A
,&&A B
_triggerState&&C P
)&&P Q
)&&Q R
)&&R S
{'' 
return'' 
base'' 
.'' 
Execute'' !
(''! "

parameters''" ,
,'', -
currentResult''. ;
)''; <
;''< =
}''> ?
return)) 
GetFreshResult)) !
())! "

parameters))" ,
,** 
currentResult** 
,++ 
StateAccessor++ 
(++ 

parameters++ (
.++( )
Context++) 0
)++0 1
,,, 
wasCancelled,, 
:,, 
false,, #
,-- 
transitionDefined-- !
:--! "
true--# '
,.. 
conditionMet.. 
:.. 
false.. #
)..# $
;..$ %
}// 	
}00 
}11 �#
aC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoForwardAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class +
StateTransitionAutoForwardAsync 2
<2 3
T3 4
,4 5
TState6 <
,< =
TTrigger> F
>F G
:H I 
StateTransitionAsyncJ ^
<^ _
T_ `
,` a
TStateb h
,h i
TTriggerj r
>r s
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_triggerState  -
;- .
public +
StateTransitionAutoForwardAsync .
(. /
IStateMachineAsync/ A
<A B
TB C
,C D
TStateE K
,K L
TTriggerM U
>U V
stateMachineW c
,c d
TStatee k
triggerStatel x
,x y
TState	z �
toState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
conditionAsyncS a
,a b
namec g
,g h
priorityi q
)q r
{ 	
_stateMachine 
= 
stateMachine (
;( )
_triggerState 
= 
triggerState (
;( )
} 	
public 
override 
async 
Task "
<" #!
StateTransitionResult# 8
<8 9
TState9 ?
,? @
TTriggerA I
>I J
>J K
ExecuteAsyncL X
(X Y
ExecutionParametersY l
<l m
Tm n
,n o
TTriggerp x
>x y

parameters	z �
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
=B C
nullD H
)H I
{   	
if!! 
(!! 
currentResult!! 
!=!!  
null!!! %
&&"" 
!"" 

parameters"" 
."" 
CancellationToken"" 0
.""0 1#
IsCancellationRequested""1 H
&&## 
(## 
_triggerState## !
.##! "
IsEqual##" )
(##) *
currentResult##* 7
.##7 8
CurrentState##8 D
)##D E
||$$ 
_stateMachine$$ $
.$$$ %
	IsInState$$% .
($$. /

parameters$$/ 9
.$$9 :
Context$$: A
,$$A B
_triggerState$$C P
)$$P Q
)$$Q R
)$$R S
{%% 
return%% 
await%% 
base%% 
.%%  
ExecuteAsync%%  ,
(%%, -

parameters%%- 7
,%%7 8
currentResult%%9 F
)%%F G
;%%G H
}%%I J
return'' 
GetFreshResult'' !
(''! "

parameters''" ,
,(( 
currentResult(( 
,)) 
StateAccessor)) 
()) 

parameters)) (
.))( )
Context))) 0
)))0 1
,** 
wasCancelled** 
:** 

parameters** (
.**( )
CancellationToken**) :
.**: ;#
IsCancellationRequested**; R
,++ 
transitionDefined++ !
:++! "
true++# '
,,, 
conditionMet,, 
:,, 
false,, #
),,# $
;,,$ %
}-- 	
}.. 
}// �'
iC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoForwardParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class 3
'StateTransitionAutoForwardParameterized :
<: ;
T; <
,< =
TState> D
,D E
TTriggerF N
,N O
TParamP V
>V W
:X Y(
StateTransitionParameterizedZ v
<v w
Tw x
,x y
TState	z �
,
� �
TTrigger
� �
,
� �
TParam
� �
>
� �
where 
TState 
: 
IComparable "
where 
TParam 
: 
class 
{ 
private 
readonly 
IStateMachine &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
_stateMachine< I
;I J
private 
readonly 
TState 
_triggerState  -
;- .
public 3
'StateTransitionAutoForwardParameterized 6
(6 7
IStateMachine7 D
<D E
TE F
,F G
TStateH N
,N O
TTriggerP X
>X Y
stateMachineZ f
,
 
TState 
triggerState 
,
 
TState 
toState 
,
 
Func 
< 
T 
, 
TParam 
, 
bool  
>  !
	condition" +
,
 
string 
name 
,
 
uint 
priority 
) 
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
	conditionS \
,\ ]
name^ b
,b c
priorityd l
)l m
{ 	
_stateMachine 
= 
stateMachine (
;( )
_triggerState 
= 
triggerState (
;( )
}   	
public"" 
override"" !
StateTransitionResult"" -
<""- .
TState"". 4
,""4 5
TTrigger""6 >
>""> ?
Execute""@ G
(""G H
ExecutionParameters""H [
<""[ \
T""\ ]
,""] ^
TTrigger""_ g
>""g h

parameters""i s
,##
 !
StateTransitionResult## !
<##! "
TState##" (
,##( )
TTrigger##* 2
>##2 3
currentResult##4 A
=##B C
null##D H
)##H I
{$$ 	
if%% 
(%% 
!%% 
(%% 

parameters%% 
.%% 
Request%% $
is%%% '
TParam%%( .
)%%. /
)%%/ 0
{&& 
throw&& 
new&& 
ArgumentException&& )
(&&) *
$"&&* ,
Expected a &&, 7
{&&7 8
typeof&&8 >
(&&> ?
TParam&&? E
)&&E F
.&&F G
Name&&G K
}&&K L'
 parameter, but received a &&L g
{&&g h

parameters&&h r
.&&r s
Request&&s z
?&&z {
.&&{ |
GetType	&&| �
(
&&� �
)
&&� �
.
&&� �
Name
&&� �
??
&&� �
$str
&&� �
}
&&� �
.
&&� �
"
&&� �
)
&&� �
;
&&� �
}
&&� �
if(( 
((( 
currentResult(( 
!=((  
null((! %
&&)) 
()) 
_triggerState)) !
.))! "
IsEqual))" )
())) *
currentResult))* 7
.))7 8
CurrentState))8 D
)))D E
||** 
_stateMachine** $
.**$ %
	IsInState**% .
(**. /

parameters**/ 9
.**9 :
Context**: A
,**A B
_triggerState**C P
)**P Q
)**Q R
)**R S
{++ 
return++ 
base++ 
.++ 
Execute++ !
(++! "

parameters++" ,
,++, -
currentResult++. ;
)++; <
;++< =
}++> ?
return-- 
GetFreshResult-- !
(--! "

parameters--" ,
,.. 
currentResult.. 
,// 
StateAccessor// 
(// 

parameters// (
.//( )
Context//) 0
)//0 1
,00 
wasCancelled00 
:00 
false00 #
,11 
transitionDefined11 !
:11! "
true11# '
,22 
conditionMet22 
:22 
false22 #
)22# $
;22$ %
}33 	
}44 
}55 �%
nC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionAutoForwardParameterizedAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class 8
,StateTransitionAutoForwardParameterizedAsync ?
<? @
T@ A
,A B
TStateC I
,I J
TTriggerK S
,S T
TParamU [
>[ \
:] ^.
!StateTransitionParameterizedAsync	_ �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
,
� �
TParam
� �
>
� �
where 
TParam 
: 
class 
where 
TState 
: 
IComparable "
{ 
private 
readonly 
IStateMachineAsync +
<+ ,
T, -
,- .
TState/ 5
,5 6
TTrigger7 ?
>? @
_stateMachineA N
;N O
private 
readonly 
TState 
_triggerState  -
;- .
public 8
,StateTransitionAutoForwardParameterizedAsync ;
(; <
IStateMachineAsync< N
<N O
TO P
,P Q
TStateR X
,X Y
TTriggerZ b
>b c
stateMachined p
,p q
TStater x
toState	y �
,
� �
TState
� �
triggerState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
TParam
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateMachine 
.  
StateAccessor  -
,- .
stateMachine/ ;
.; <
StateMutator< H
,H I
toStateJ Q
,Q R
conditionAsyncS a
,a b
namec g
,g h
priorityi q
)q r
{ 	
_stateMachine 
= 
stateMachine (
;( )
_triggerState 
= 
triggerState (
;( )
} 	
public 
override 
async 
Task "
<" #!
StateTransitionResult# 8
<8 9
TState9 ?
,? @
TTriggerA I
>I J
>J K
ExecuteAsyncL X
(X Y
ExecutionParametersY l
<l m
Tm n
,n o
TTriggerp x
>x y

parameters	z �
,  
 !
StateTransitionResult   !
<  ! "
TState  " (
,  ( )
TTrigger  * 2
>  2 3
currentResult  4 A
=  B C
null  D H
)  H I
{!! 	
if"" 
("" 
currentResult"" 
!=""  
null""! %
&&## 
!## 

parameters## 
.## 
CancellationToken## 0
.##0 1#
IsCancellationRequested##1 H
&&$$ 
($$ 
_triggerState$$ !
.$$! "
IsEqual$$" )
($$) *
currentResult$$* 7
.$$7 8
CurrentState$$8 D
)$$D E
||%% 
_stateMachine%% !
.%%! "
	IsInState%%" +
(%%+ ,

parameters%%, 6
.%%6 7
Context%%7 >
,%%> ?
_triggerState%%@ M
)%%M N
)%%N O
)%%O P
{&& 
return&& 
await&& 
base&& 
.&&  
ExecuteAsync&&  ,
(&&, -

parameters&&- 7
,&&7 8
currentResult&&9 F
)&&F G
;&&G H
}&&I J
return(( 
GetFreshResult(( !
(((! "

parameters((" ,
,)) 
currentResult)) 
,** 
StateAccessor** 
(** 

parameters** (
.**( )
Context**) 0
)**0 1
,++ 
wasCancelled++ 
:++ 

parameters++ (
.++( )
CancellationToken++) :
.++: ;#
IsCancellationRequested++; R
,,, 
transitionDefined,, !
:,,! "
true,,# '
,-- 
conditionMet-- 
:-- 
false-- #
)--# $
;--$ %
}.. 	
}// 
}00 �6
UC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionBase.cs
	namespace 	
NStateManager
 
{ 
public 

abstract 
class 
StateTransitionBase -
<- .
T. /
,/ 0
TState1 7
,7 8
TTrigger9 A
>A B
{ 
public 
static 
event 
Action "
<" #
T# $
,$ %!
StateTransitionResult& ;
<; <
TState< B
,B C
TTriggerD L
>L M
>M N
OnTransitionedEventO b
;b c
	protected 
string 
Name 
; 
	protected 
internal 
uint 
Priority  (
;( )
	protected 
Func 
< 
T 
, 
TState  
>  !
StateAccessor" /
{0 1
get2 5
;5 6
}7 8
	protected 
Action 
< 
T 
, 
TState "
>" #
StateMutator$ 0
{1 2
get3 6
;6 7
}8 9
	protected 
StateTransitionBase %
(% &
Func& *
<* +
T+ ,
,, -
TState. 4
>4 5
stateAccessor6 C
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
string 
name 
, 
uint 
priority 
) 
{ 	
StateAccessor 
= 
stateAccessor )
??* ,
throw- 2
new3 6!
ArgumentNullException7 L
(L M
nameofM S
(S T
stateAccessorT a
)a b
)b c
;c d
StateMutator 
= 
stateMutator '
??( *
throw+ 0
new1 4!
ArgumentNullException5 J
(J K
nameofK Q
(Q R
stateMutatorR ^
)^ _
)_ `
;` a
Name   
=   
name   
??   
$str   &
;  & '
Priority!! 
=!! 
priority!! 
;!!  
}"" 	
public$$ 
virtual$$ !
StateTransitionResult$$ ,
<$$, -
TState$$- 3
,$$3 4
TTrigger$$5 =
>$$= >
Execute$$? F
($$F G
ExecutionParameters$$G Z
<$$Z [
T$$[ \
,$$\ ]
TTrigger$$^ f
>$$f g

parameters$$h r
,%%
 !
StateTransitionResult%% !
<%%! "
TState%%" (
,%%( )
TTrigger%%* 2
>%%2 3
currentResult%%4 A
=%%B C
null%%D H
)%%H I
{&& 	
throw'' 
new'' #
NotImplementedException'' -
(''- .
$str	''. �
)
''� �
;
''� �
}(( 	
public** 
virtual** 
Task** 
<** !
StateTransitionResult** 1
<**1 2
TState**2 8
,**8 9
TTrigger**: B
>**B C
>**C D
ExecuteAsync**E Q
(**Q R
ExecutionParameters**R e
<**e f
T**f g
,**g h
TTrigger**i q
>**q r

parameters**s }
,++
 !
StateTransitionResult++ !
<++! "
TState++" (
,++( )
TTrigger++* 2
>++2 3
currentResult++4 A
=++B C
null++D H
)++H I
{,, 	
throw-- 
new-- #
NotImplementedException-- -
(--- .
$str	--. �
)
--� �
;
--� �
}.. 	
	protected00 !
StateTransitionResult00 '
<00' (
TState00( .
,00. /
TTrigger000 8
>008 9
GetFreshResult00: H
(00H I
ExecutionParameters00I \
<00\ ]
T00] ^
,00^ _
TTrigger00` h
>00h i

parameters00j t
,11 !
StateTransitionResult11 #
<11# $
TState11$ *
,11* +
TTrigger11, 4
>114 5
previousResult116 D
,22 
TState22 

startState22 
,33 
bool33 
transitionDefined33 $
,44 
bool44 
conditionMet44 
,55 
bool55 
wasCancelled55 
)55  
{66 	
bool77 
wasSuccessful77 
=77  
(77! "
transitionDefined77" 3
&&774 6
conditionMet777 C
&&77D F
!77G H
wasCancelled77H T
)77T U
;77U V
return99 
new99 !
StateTransitionResult99 ,
<99, -
TState99- 3
,993 4
TTrigger995 =
>99= >
(99> ?

parameters99? I
.99I J
Trigger99J Q
,:: 

startState:: 
,;; 
(;; 
!;; 
wasSuccessful;; 
||;;  "
previousResult;;# 1
==;;2 4
null;;5 9
);;9 :
?;;; <

startState;;= G
:;;H I
previousResult;;J X
.;;X Y
CurrentState;;Y e
,<< 
wasSuccessful<< 
?<< 
StateAccessor<<  -
(<<- .

parameters<<. 8
.<<8 9
Context<<9 @
)<<@ A
:<<B C
previousResult<<D R
==<<S U
null<<V Z
?<<[ \

startState<<] g
:<<h i
previousResult<<j x
.<<x y
CurrentState	<<y �
,== 
wasSuccessful== 
?== 
Name==  $
:==% &
string==' -
.==- .
Empty==. 3
,>> 
wasCancelled>> 
:>> 
wasCancelled>> *
,?? 
conditionMet?? 
:?? 
conditionMet?? *
,@@ 
transitionDefined@@ !
:@@! "
transitionDefined@@# 4
)@@4 5
;@@5 6
}AA 	
	protectedCC 
voidCC 
NotifyOfTransitionCC )
(CC) *
TCC* +
contextCC, 3
,CC3 4!
StateTransitionResultCC5 J
<CCJ K
TStateCCK Q
,CCQ R
TTriggerCCS [
>CC[ \
transitionResultCC] m
)CCm n
{DD 	
OnTransitionedEventEE 
?EE  
.EE  !
InvokeEE! '
(EE' (
contextEE( /
,EE/ 0
transitionResultEE1 A
)EEA B
;EEB C
}FF 	
}GG 
}HH �"
XC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionDynamic.cs
	namespace 	
NStateManager
 
{ 
internal 
class "
StateTransitionDynamic )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
:? @&
StateTransitionDynamicBaseA [
<[ \
T\ ]
,] ^
TState_ e
,e f
TTriggerg o
>o p
where 
TState 
: 
IComparable "
{ 
public 
Func 
< 
T 
, 
TState 
> 
	StateFunc (
{) *
get+ .
;. /
}0 1
public "
StateTransitionDynamic %
(% &
Func& *
<* +
T+ ,
,, -
TState. 4
>4 5
stateAccessor6 C
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
Func 
< 
T 
, 
TState 
> 
	stateFunc '
, 
string 
name 
, 
uint 
priority 
) 
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
name0 4
,4 5
priority6 >
)> ?
{ 	
	StateFunc 
= 
	stateFunc !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
	stateFuncL U
)U V
)V W
;W X
} 	
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,s t"
StateTransitionResult	u �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
=
� �
null
� �
)
� �
{ 	
var   

startState   
=   
currentResult   *
!=  + -
null  . 2
?  3 4
currentResult  5 B
.  B C
StartingState  C P
:  Q R
StateAccessor  S `
(  ` a

parameters  a k
.  k l
Context  l s
)  s t
;  t u
var!! 
toState!! 
=!! 
	StateFunc!! #
(!!# $

parameters!!$ .
.!!. /
Context!!/ 6
)!!6 7
;!!7 8
StateMutator## 
(## 

parameters## #
.### $
Context##$ +
,##+ ,
toState##- 4
)##4 5
;##5 6
var%% 
transitioned%% 
=%% 
!%%  
StateAccessor%%  -
(%%- .

parameters%%. 8
.%%8 9
Context%%9 @
)%%@ A
.%%A B
IsEqual%%B I
(%%I J

startState%%J T
)%%T U
;%%U V
var&& 
transitionResult&&  
=&&! "
GetFreshResult&&# 1
(&&1 2

parameters&&2 <
,&&< =
currentResult&&> K
,&&K L

startState&&M W
,&&W X
wasCancelled&&Y e
:&&e f
false&&g l
,&&l m
transitionDefined&&n 
:	&& �
true
&&� �
,
&&� �
conditionMet
&&� �
:
&&� �
transitioned
&&� �
)
&&� �
;
&&� �
if'' 
('' 
transitioned'' 
)'' 
{(( 
NotifyOfTransition((  
(((  !

parameters((! +
.((+ ,
Context((, 3
,((3 4
transitionResult((5 E
)((E F
;((F G
}((H I
return** 
transitionResult** #
;**# $
}++ 	
},, 
}-- �

\C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionDynamicBase.cs
	namespace 	
NStateManager
 
{ 
internal 
abstract 
class &
StateTransitionDynamicBase 6
<6 7
T7 8
,8 9
TState: @
,@ A
TTriggerB J
>J K
:L M
StateTransitionBaseN a
<a b
Tb c
,c d
TStatee k
,k l
TTriggerm u
>u v
where 
TState 
: 
IComparable "
{ 
	protected &
StateTransitionDynamicBase ,
(, -
Func- 1
<1 2
T2 3
,3 4
TState5 ;
>; <
stateAccessor= J
,J K
ActionL R
<R S
TS T
,T U
TStateV \
>\ ]
stateMutator^ j
,j k
stringl r
names w
,w x
uinty }
priority	~ �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
name0 4
,4 5
priority6 >
)> ?
{ 	
}
 
} 
} �+
eC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionDynamicParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class /
#StateTransitionDynamicParameterized 6
<6 7
T7 8
,8 9
TState: @
,@ A
TTriggerB J
,J K
TParamL R
>R S
:T U&
StateTransitionDynamicBaseV p
<p q
Tq r
,r s
TStatet z
,z {
TTrigger	| �
>
� �
where 
TParam 
: 
class 
where 
TState 
: 
IComparable "
{ 
public 
Func 
< 
T 
, 
TParam 
, 
TState %
>% &
	StateFunc' 0
{1 2
get3 6
;6 7
}8 9
public /
#StateTransitionDynamicParameterized 2
(2 3
Func3 7
<7 8
T8 9
,9 :
TState; A
>A B
stateAccessorC P
,P Q
ActionR X
<X Y
TY Z
,Z [
TState\ b
>b c
stateMutatord p
,p q
Funcr v
<v w
Tw x
,x y
TParam	z �
,
� �
TState
� �
>
� �
	stateFunc
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
name0 4
,4 5
priority6 >
)> ?
{ 	
	StateFunc 
= 
	stateFunc !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
	stateFuncL U
)U V
)V W
;W X
} 	
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,s t"
StateTransitionResult	u �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
=
� �
null
� �
)
� �
{ 	
if 
( 
! 
( 

parameters 
. 
Request $
is% '
TParam( .
typeSafeParam/ <
)< =
)= >
{ 
throw 
new 
ArgumentException )
() *
$"* ,
Expected a , 7
{7 8
typeof8 >
(> ?
TParam? E
)E F
.F G
NameG K
}K L'
 parameter, but received a L g
{g h

parametersh r
.r s
Requests z
?z {
.{ |
GetType	| �
(
� �
)
� �
.
� �
Name
� �
??
� �
$str
� �
}
� �
.
� �
"
� �
)
� �
;
� �
}
� �
var   

startState   
=   
currentResult   *
!=  + -
null  . 2
?  3 4
currentResult  5 B
.  B C
StartingState  C P
:  Q R
StateAccessor  S `
(  ` a

parameters  a k
.  k l
Context  l s
)  s t
;  t u
var!! 
toState!! 
=!! 
	StateFunc!! #
(!!# $

parameters!!$ .
.!!. /
Context!!/ 6
,!!6 7
typeSafeParam!!8 E
)!!E F
;!!F G
var## 
transitioned## 
=## 
!##  
toState##  '
.##' (
IsEqual##( /
(##/ 0

startState##0 :
)##: ;
;##; <
if%% 
(%% 
transitioned%% 
)%% 
{&& 
StateMutator&& 
(&& 

parameters&& %
.&&% &
Context&&& -
,&&- .
toState&&/ 6
)&&6 7
;&&7 8
}&&9 :
var(( 
transitionResult((  
=((! "
GetFreshResult((# 1
(((1 2

parameters((2 <
,((< =
currentResult((> K
,((K L

startState((M W
,((W X
transitionDefined((Y j
:((j k
true((l p
,((p q
wasCancelled((r ~
:((~ 
false
((� �
,
((� �
conditionMet
((� �
:
((� �
transitioned
((� �
)
((� �
;
((� �
if)) 
()) 
transitioned)) 
))) 
{** 
NotifyOfTransition**  
(**  !

parameters**! +
.**+ ,
Context**, 3
,**3 4
transitionResult**5 E
)**E F
;**F G
}**H I
return,, 
transitionResult,, #
;,,# $
}-- 	
}.. 
}// ��
XC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionFactory.cs
	namespace 	
NStateManager
 
{ 
internal 
static 
class "
StateTransitionFactory 0
<0 1
T1 2
,2 3
TState4 :
,: ;
TTrigger< D
>D E
where 
TState 
: 
IComparable "
{ 
public 
static 
StateTransitionBase )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
GetStateTransition? Q
(Q R
IStateMachineR _
<_ `
T` a
,a b
TStatec i
,i j
TTriggerk s
>s t
stateMachine	u �
,
� �
TState
� �
toState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
bool
� �
>
� �
	condition
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
{ 	
return 
new 
StateTransition &
<& '
T' (
,( )
TState* 0
,0 1
TTrigger2 :
>: ;
(; <
stateMachine< H
.H I
StateAccessorI V
,V W
stateMachineX d
.d e
StateMutatore q
,q r
toStates z
,z {
	condition	| �
,
� �
name
� �
,
� �
priority
� �
)
� �
;
� �
} 	
public 
static 
StateTransitionBase )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
GetStateTransition? Q
(Q R
IStateMachineR _
<_ `
T` a
,a b
TStatec i
,i j
TTriggerk s
>s t
stateMachine	u �
,
� �
TState
� �

startState
� �
,
� �
TState
� �
toState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
bool
� �
>
� �
	condition
� �
,
� �
TState
� �
triggerState
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
{ 	
return 
new '
StateTransitionAutoFallback 3
<3 4
T4 5
,5 6
TState7 =
,= >
TTrigger? G
>G H
(H I
stateMachineI U
,U V

startStateW a
,a b
triggerStatec o
,o p
toStateq x
,x y
	condition	z �
,
� �
name
� �
,
� �
priority
� �
)
� �
;
� �
} 	
public 
static 
StateTransitionBase )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
GetStateTransition? Q
(Q R
IStateMachineR _
<_ `
T` a
,a b
TStatec i
,i j
TTriggerk s
>s t
stateMachine	u �
,
� �
TState
� �
triggerState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
bool
� �
>
� �
	condition
� �
,
� �
TState
� �
toState
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
{ 	
return   
new   &
StateTransitionAutoForward   1
<  1 2
T  2 3
,  3 4
TState  5 ;
,  ; <
TTrigger  = E
>  E F
(  F G
stateMachine  G S
,  S T
triggerState  U a
,  a b
toState  c j
,  j k
	condition  l u
,  u v
name  w {
,  { |
priority	  } �
)
  � �
;
  � �
}!! 	
public## 
static## 
StateTransitionBase## )
<##) *
T##* +
,##+ ,
TState##- 3
,##3 4
TTrigger##5 =
>##= >
GetStateTransition##? Q
(##Q R
IStateMachine##R _
<##_ `
T##` a
,##a b
TState##c i
,##i j
TTrigger##k s
>##s t
stateMachine	##u �
,
##� �
TState
##� �

startState
##� �
,
##� �
Func
##� �
<
##� �
T
##� �
,
##� �
TState
##� �
>
##� �
stateFunction
##� �
,
##� �
TState
##� �
triggerState
##� �
,
##� �
string
##� �
name
##� �
,
##� �
uint
##� �
priority
##� �
=
##� �
$num
##� �
)
##� �
{$$ 	
return%% 
new%% &
StateTransitionAutoDynamic%% 1
<%%1 2
T%%2 3
,%%3 4
TState%%5 ;
,%%; <
TTrigger%%= E
>%%E F
(%%F G
stateMachine%%G S
,%%S T

startState%%U _
,%%_ `
stateFunction%%a n
,%%n o
triggerState%%p |
,%%| }
name	%%~ �
,
%%� �
priority
%%� �
)
%%� �
;
%%� �
}&& 	
public(( 
static(( 
StateTransitionBase(( )
<(() *
T((* +
,((+ ,
TState((- 3
,((3 4
TTrigger((5 =
>((= >
GetStateTransition((? Q
<((Q R
TRequest((R Z
>((Z [
((([ \
IStateMachine((\ i
<((i j
T((j k
,((k l
TState((m s
,((s t
TTrigger((u }
>((} ~
stateMachine	(( �
,
((� �
TState
((� �

startState
((� �
,
((� �
Func
((� �
<
((� �
T
((� �
,
((� �
TRequest
((� �
,
((� �
TState
((� �
>
((� �
stateFunction
((� �
,
((� �
TState
((� �
triggerState
((� �
,
((� �
string
((� �
name
((� �
,
((� �
uint
((� �
priority
((� �
=
((� �
$num
((� �
)
((� �
where)) 
TRequest)) 
:)) 
class)) "
{** 	
return++ 
new++ 3
'StateTransitionAutoDynamicParameterized++ >
<++> ?
T++? @
,++@ A
TState++B H
,++H I
TTrigger++J R
,++R S
TRequest++T \
>++\ ]
(++] ^
stateMachine++^ j
,++j k

startState++l v
,++v w
stateFunction	++x �
,
++� �
triggerState
++� �
,
++� �
name
++� �
,
++� �
priority
++� �
)
++� �
;
++� �
},, 	
public.. 
static.. 
StateTransitionBase.. )
<..) *
T..* +
,..+ ,
TState..- 3
,..3 4
TTrigger..5 =
>..= >
GetStateTransition..? Q
<..Q R
TRequest..R Z
>..Z [
(..[ \
IStateMachine..\ i
<..i j
T..j k
,..k l
TState..m s
,..s t
TTrigger..u }
>..} ~
stateMachine	.. �
,
..� �
TState
..� �
toState
..� �
,
..� �
Func
..� �
<
..� �
T
..� �
,
..� �
TRequest
..� �
,
..� �
bool
..� �
>
..� �
	condition
..� �
,
..� �
string
..� �
name
..� �
,
..� �
uint
..� �
priority
..� �
=
..� �
$num
..� �
)
..� �
where// 
TRequest// 
:// 
class// "
{00 	
return11 
new11 (
StateTransitionParameterized11 3
<113 4
T114 5
,115 6
TState117 =
,11= >
TTrigger11? G
,11G H
TRequest11I Q
>11Q R
(11R S
stateMachine11S _
.11_ `
StateAccessor11` m
,11m n
stateMachine11o {
.11{ |
StateMutator	11| �
,
11� �
toState
11� �
,
11� �
	condition
11� �
,
11� �
name
11� �
,
11� �
priority
11� �
)
11� �
;
11� �
}22 	
public44 
static44 
StateTransitionBase44 )
<44) *
T44* +
,44+ ,
TState44- 3
,443 4
TTrigger445 =
>44= >
GetStateTransition44? Q
<44Q R
TRequest44R Z
>44Z [
(44[ \
IStateMachine44\ i
<44i j
T44j k
,44k l
TState44m s
,44s t
TTrigger44u }
>44} ~
stateMachine	44 �
,
44� �
TState
44� �

startState
44� �
,
44� �
TState
44� �
toState
44� �
,
44� �
Func
44� �
<
44� �
T
44� �
,
44� �
TRequest
44� �
,
44� �
bool
44� �
>
44� �
	condition
44� �
,
44� �
TState
44� �
triggerState
44� �
,
44� �
string
44� �
name
44� �
,
44� �
uint
44� �
priority
44� �
=
44� �
$num
44� �
)
44� �
where55 
TRequest55 
:55 
class55 "
{66 	
return77 
new77 4
(StateTransitionAutoFallbackParameterized77 ?
<77? @
T77@ A
,77A B
TState77C I
,77I J
TTrigger77K S
,77S T
TRequest77U ]
>77] ^
(77^ _
stateMachine77_ k
,77k l

startState77m w
,77w x
triggerState	77y �
,
77� �
toState
77� �
,
77� �
	condition
77� �
,
77� �
name
77� �
,
77� �
priority
77� �
)
77� �
;
77� �
}88 	
public:: 
static:: 
StateTransitionBase:: )
<::) *
T::* +
,::+ ,
TState::- 3
,::3 4
TTrigger::5 =
>::= >
GetStateTransition::? Q
<::Q R
TRequest::R Z
>::Z [
(::[ \
IStateMachine::\ i
<::i j
T::j k
,::k l
TState::m s
,::s t
TTrigger::u }
>::} ~
stateMachine	:: �
,
::� �
TState
::� �
toState
::� �
,
::� �
Func
::� �
<
::� �
T
::� �
,
::� �
TRequest
::� �
,
::� �
bool
::� �
>
::� �
	condition
::� �
,
::� �
TState
::� �
triggerState
::� �
,
::� �
string
::� �
name
::� �
,
::� �
uint
::� �
priority
::� �
=
::� �
$num
::� �
)
::� �
where;; 
TRequest;; 
:;; 
class;; "
{<< 	
return== 
new== 3
'StateTransitionAutoForwardParameterized== >
<==> ?
T==? @
,==@ A
TState==B H
,==H I
TTrigger==J R
,==R S
TRequest==T \
>==\ ]
(==] ^
stateMachine==^ j
,==j k
triggerState==l x
,==x y
toState	==z �
,
==� �
	condition
==� �
,
==� �
name
==� �
,
==� �
priority
==� �
)
==� �
;
==� �
}>> 	
publicKK 
staticKK 
StateTransitionBaseKK )
<KK) *
TKK* +
,KK+ ,
TStateKK- 3
,KK3 4
TTriggerKK5 =
>KK= >
GetStateTransitionKK? Q
(KKQ R
IStateMachineAsyncKKR d
<KKd e
TKKe f
,KKf g
TStateKKh n
,KKn o
TTriggerKKp x
>KKx y
stateMachine	KKz �
,
KK� �
TState
KK� �
toState
KK� �
,
KK� �
Func
KK� �
<
KK� �
T
KK� �
,
KK� �
CancellationToken
KK� �
,
KK� �
Task
KK� �
<
KK� �
bool
KK� �
>
KK� �
>
KK� �
conditionAsync
KK� �
,
KK� �
string
KK� �
name
KK� �
,
KK� �
uint
KK� �
priority
KK� �
=
KK� �
$num
KK� �
)
KK� �
{LL 	
returnMM 
newMM  
StateTransitionAsyncMM +
<MM+ ,
TMM, -
,MM- .
TStateMM/ 5
,MM5 6
TTriggerMM7 ?
>MM? @
(MM@ A
stateMachineMMA M
.MMM N
StateAccessorMMN [
,MM[ \
stateMachineMM] i
.MMi j
StateMutatorMMj v
,MMv w
toStateMMx 
,	MM �
conditionAsync
MM� �
,
MM� �
name
MM� �
,
MM� �
priority
MM� �
)
MM� �
;
MM� �
}NN 	
publicPP 
staticPP 
StateTransitionBasePP )
<PP) *
TPP* +
,PP+ ,
TStatePP- 3
,PP3 4
TTriggerPP5 =
>PP= >
GetStateTransitionPP? Q
(PPQ R
IStateMachineAsyncPPR d
<PPd e
TPPe f
,PPf g
TStatePPh n
,PPn o
TTriggerPPp x
>PPx y
stateMachine	PPz �
,
PP� �
TState
PP� �

startState
PP� �
,
PP� �
Func
PP� �
<
PP� �
T
PP� �
,
PP� �
TState
PP� �
>
PP� �
stateFunction
PP� �
,
PP� �
TState
PP� �
triggerState
PP� �
,
PP� �
string
PP� �
name
PP� �
,
PP� �
uint
PP� �
priority
PP� �
=
PP� �
$num
PP� �
)
PP� �
{QQ 	
returnRR 
newRR +
StateTransitionAutoDynamicAsyncRR 6
<RR6 7
TRR7 8
,RR8 9
TStateRR: @
,RR@ A
TTriggerRRB J
>RRJ K
(RRK L
stateMachineRRL X
,RRX Y

startStateRRZ d
,RRd e
stateFunctionRRf s
,RRs t
triggerState	RRu �
,
RR� �
name
RR� �
,
RR� �
priority
RR� �
)
RR� �
;
RR� �
}SS 	
publicUU 
staticUU 
StateTransitionBaseUU )
<UU) *
TUU* +
,UU+ ,
TStateUU- 3
,UU3 4
TTriggerUU5 =
>UU= >
GetStateTransitionUU? Q
<UUQ R
TRequestUUR Z
>UUZ [
(UU[ \
IStateMachineAsyncUU\ n
<UUn o
TUUo p
,UUp q
TStateUUr x
,UUx y
TTrigger	UUz �
>
UU� �
stateMachine
UU� �
,
UU� �
TState
UU� �

startState
UU� �
,
UU� �
Func
UU� �
<
UU� �
T
UU� �
,
UU� �
TRequest
UU� �
,
UU� �
TState
UU� �
>
UU� �
stateFunction
UU� �
,
UU� �
TState
UU� �
triggerState
UU� �
,
UU� �
string
UU� �
name
UU� �
,
UU� �
uint
UU� �
priority
UU� �
=
UU� �
$num
UU� �
)
UU� �
whereVV 
TRequestVV 
:VV 
classVV "
{WW 	
returnXX 
newXX 8
,StateTransitionAutoDynamicParameterizedAsyncXX C
<XXC D
TXXD E
,XXE F
TStateXXG M
,XXM N
TTriggerXXO W
,XXW X
TRequestXXY a
>XXa b
(XXb c
stateMachineXXc o
,XXo p

startStateXXq {
,XX{ |
stateFunction	XX} �
,
XX� �
triggerState
XX� �
,
XX� �
name
XX� �
,
XX� �
priority
XX� �
)
XX� �
;
XX� �
}YY 	
public[[ 
static[[ 
StateTransitionBase[[ )
<[[) *
T[[* +
,[[+ ,
TState[[- 3
,[[3 4
TTrigger[[5 =
>[[= >
GetStateTransition[[? Q
([[Q R
IStateMachineAsync[[R d
<[[d e
T[[e f
,[[f g
TState[[h n
,[[n o
TTrigger[[p x
>[[x y
stateMachine	[[z �
,
[[� �
TState
[[� �

startState
[[� �
,
[[� �
TState
[[� �
toState
[[� �
,
[[� �
Func
[[� �
<
[[� �
T
[[� �
,
[[� �
CancellationToken
[[� �
,
[[� �
Task
[[� �
<
[[� �
bool
[[� �
>
[[� �
>
[[� �
conditionAsync
[[� �
,
[[� �
TState
[[� �
triggerState
[[� �
,
[[� �
string
[[� �
name
[[� �
,
[[� �
uint
[[� �
priority
[[� �
=
[[� �
$num
[[� �
)
[[� �
{\\ 	
return]] 
new]] ,
 StateTransitionAutoFallbackAsync]] 7
<]]7 8
T]]8 9
,]]9 :
TState]]; A
,]]A B
TTrigger]]C K
>]]K L
(]]L M
stateMachine]]M Y
,]]Y Z

startState]][ e
,]]e f
triggerState]]g s
,]]s t
toState]]u |
,]]| }
conditionAsync	]]~ �
,
]]� �
name
]]� �
,
]]� �
priority
]]� �
)
]]� �
;
]]� �
}^^ 	
public`` 
static`` 
StateTransitionBase`` )
<``) *
T``* +
,``+ ,
TState``- 3
,``3 4
TTrigger``5 =
>``= >
GetStateTransition``? Q
(``Q R
IStateMachineAsync``R d
<``d e
T``e f
,``f g
TState``h n
,``n o
TTrigger``p x
>``x y
stateMachine	``z �
,
``� �
TState
``� �
toState
``� �
,
``� �
Func
``� �
<
``� �
T
``� �
,
``� �
CancellationToken
``� �
,
``� �
Task
``� �
<
``� �
bool
``� �
>
``� �
>
``� �
conditionAsync
``� �
,
``� �
TState
``� �
triggerState
``� �
,
``� �
string
``� �
name
``� �
,
``� �
uint
``� �
priority
``� �
=
``� �
$num
``� �
)
``� �
{aa 	
returnbb 
newbb +
StateTransitionAutoForwardAsyncbb 6
<bb6 7
Tbb7 8
,bb8 9
TStatebb: @
,bb@ A
TTriggerbbB J
>bbJ K
(bbK L
stateMachinebbL X
,bbX Y
triggerStatebbZ f
,bbf g
toStatebbh o
,bbo p
conditionAsyncbbq 
,	bb �
name
bb� �
,
bb� �
priority
bb� �
)
bb� �
;
bb� �
}cc 	
publicee 
staticee 
StateTransitionBaseee )
<ee) *
Tee* +
,ee+ ,
TStateee- 3
,ee3 4
TTriggeree5 =
>ee= >
GetStateTransitionee? Q
(eeQ R
IStateMachineeeR _
<ee_ `
Tee` a
,eea b
TStateeec i
,eei j
TTriggereek s
>ees t
stateMachine	eeu �
,
ee� �
Func
ee� �
<
ee� �
T
ee� �
,
ee� �
TState
ee� �
>
ee� �
	stateFunc
ee� �
,
ee� �
string
ee� �
name
ee� �
,
ee� �
uint
ee� �
priority
ee� �
=
ee� �
$num
ee� �
)
ee� �
{ff 	
returngg 
newgg "
StateTransitionDynamicgg -
<gg- .
Tgg. /
,gg/ 0
TStategg1 7
,gg7 8
TTriggergg9 A
>ggA B
(ggB C
stateMachineggC O
.ggO P
StateAccessorggP ]
,gg] ^
stateMachinegg_ k
.ggk l
StateMutatorggl x
,ggx y
	stateFunc	ggz �
,
gg� �
name
gg� �
,
gg� �
priority
gg� �
)
gg� �
;
gg� �
}hh 	
publicjj 
staticjj 
StateTransitionBasejj )
<jj) *
Tjj* +
,jj+ ,
TStatejj- 3
,jj3 4
TTriggerjj5 =
>jj= >
GetStateTransitionjj? Q
(jjQ R
IStateMachineAsyncjjR d
<jjd e
Tjje f
,jjf g
TStatejjh n
,jjn o
TTriggerjjp x
>jjx y
stateMachine	jjz �
,
jj� �
Func
jj� �
<
jj� �
T
jj� �
,
jj� �
TState
jj� �
>
jj� �
	stateFunc
jj� �
,
jj� �
string
jj� �
name
jj� �
,
jj� �
uint
jj� �
priority
jj� �
=
jj� �
$num
jj� �
)
jj� �
{kk 	
returnll 
newll "
StateTransitionDynamicll -
<ll- .
Tll. /
,ll/ 0
TStatell1 7
,ll7 8
TTriggerll9 A
>llA B
(llB C
stateMachinellC O
.llO P
StateAccessorllP ]
,ll] ^
stateMachinell_ k
.llk l
StateMutatorlll x
,llx y
	stateFunc	llz �
,
ll� �
name
ll� �
,
ll� �
priority
ll� �
)
ll� �
;
ll� �
}mm 	
publictt 
statictt 
StateTransitionBasett )
<tt) *
Ttt* +
,tt+ ,
TStatett- 3
,tt3 4
TTriggertt5 =
>tt= >
GetStateTransitiontt? Q
<ttQ R
TParamttR X
>ttX Y
(ttY Z
IStateMachinettZ g
<ttg h
Ttth i
,tti j
TStatettk q
,ttq r
TTriggertts {
>tt{ |
stateMachine	tt} �
,
tt� �
Func
tt� �
<
tt� �
T
tt� �
,
tt� �
TParam
tt� �
,
tt� �
TState
tt� �
>
tt� �
	stateFunc
tt� �
,
tt� �
string
tt� �
name
tt� �
,
tt� �
uint
tt� �
priority
tt� �
=
tt� �
$num
tt� �
)
tt� �
whereuu 
TParamuu 
:uu 
classuu  
{vv 	
returnww 
newww /
#StateTransitionDynamicParameterizedww :
<ww: ;
Tww; <
,ww< =
TStateww> D
,wwD E
TTriggerwwF N
,wwN O
TParamwwP V
>wwV W
(wwW X
stateMachinewwX d
.wwd e
StateAccessorwwe r
,wwr s
stateMachine	wwt �
.
ww� �
StateMutator
ww� �
,
ww� �
	stateFunc
ww� �
,
ww� �
name
ww� �
,
ww� �
priority
ww� �
)
ww� �
;
ww� �
}xx 	
publiczz 
staticzz 
StateTransitionBasezz )
<zz) *
Tzz* +
,zz+ ,
TStatezz- 3
,zz3 4
TTriggerzz5 =
>zz= >
GetStateTransitionzz? Q
<zzQ R
TRequestzzR Z
>zzZ [
(zz[ \
IStateMachineAsynczz\ n
<zzn o
Tzzo p
,zzp q
TStatezzr x
,zzx y
TTrigger	zzz �
>
zz� �
stateMachine
zz� �
,
zz� �
Func
zz� �
<
zz� �
T
zz� �
,
zz� �
TRequest
zz� �
,
zz� �
TState
zz� �
>
zz� �
stateFuncAsync
zz� �
,
zz� �
string
zz� �
name
zz� �
,
zz� �
uint
zz� �
priority
zz� �
=
zz� �
$num
zz� �
)
zz� �
where{{ 
TRequest{{ 
:{{ 
class{{ "
{|| 	
return}} 
new}} /
#StateTransitionDynamicParameterized}} :
<}}: ;
T}}; <
,}}< =
TState}}> D
,}}D E
TTrigger}}F N
,}}N O
TRequest}}P X
>}}X Y
(}}Y Z
stateMachine}}Z f
.}}f g
StateAccessor}}g t
,}}t u
stateMachine	}}v �
.
}}� �
StateMutator
}}� �
,
}}� �
stateFuncAsync
}}� �
,
}}� �
name
}}� �
,
}}� �
priority
}}� �
)
}}� �
;
}}� �
}~~ 	
public
�� 
static
�� !
StateTransitionBase
�� )
<
��) *
T
��* +
,
��+ ,
TState
��- 3
,
��3 4
TTrigger
��5 =
>
��= > 
GetStateTransition
��? Q
<
��Q R
TParam
��R X
>
��X Y
(
��Y Z 
IStateMachineAsync
��Z l
<
��l m
T
��m n
,
��n o
TState
��p v
,
��v w
TTrigger��x �
>��� �
stateMachine��� �
,��� �
TState��� �
toState��� �
,��� �
Func��� �
<��� �
T��� �
,��� �
TParam��� �
,��� �!
CancellationToken��� �
,��� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
conditionAsync��� �
,��� �
string��� �
name��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
where
�� 
TParam
�� 
:
�� 
class
�� 
{
�� 	
return
�� 
new
�� /
!StateTransitionParameterizedAsync
�� 8
<
��8 9
T
��9 :
,
��: ;
TState
��< B
,
��B C
TTrigger
��D L
,
��L M
TParam
��N T
>
��T U
(
��U V
stateMachine
��V b
.
��b c
StateAccessor
��c p
,
��p q
stateMachine
��r ~
.
��~ 
StateMutator�� �
,��� �
toState��� �
,��� �
conditionAsync��� �
,��� �
name��� �
,��� �
priority��� �
)��� �
;��� �
}
�� 	
public
�� 
static
�� !
StateTransitionBase
�� )
<
��) *
T
��* +
,
��+ ,
TState
��- 3
,
��3 4
TTrigger
��5 =
>
��= > 
GetStateTransition
��? Q
<
��Q R
TParam
��R X
>
��X Y
(
��Y Z 
IStateMachineAsync
��Z l
<
��l m
T
��m n
,
��n o
TState
��p v
,
��v w
TTrigger��x �
>��� �
stateMachine��� �
,��� �
TState��� �

startState��� �
,��� �
TState��� �
toState��� �
,��� �
Func��� �
<��� �
T��� �
,��� �
TParam��� �
,��� �!
CancellationToken��� �
,��� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
conditionAsync��� �
,��� �
TState��� �
triggerState��� �
,��� �
string��� �
name��� �
,��� �
uint��� �
priority��� �
=��� �
$num��� �
)��� �
where
�� 
TParam
�� 
:
�� 
class
��  
{
�� 	
return
�� 
new
�� ;
-StateTransitionAutoFallbackParameterizedAsync
�� D
<
��D E
T
��E F
,
��F G
TState
��H N
,
��N O
TTrigger
��P X
,
��X Y
TParam
��Z `
>
��` a
(
��a b
stateMachine
��b n
,
��n o

startState
��p z
,
��z {
toState��| �
,��� �
triggerState��� �
,��� �
conditionAsync��� �
,��� �
name��� �
,��� �
priority��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
[C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionNonDynamic.cs
	namespace 	
NStateManager
 
{ 
public 

abstract 
class %
StateTransitionNonDynamic 3
<3 4
T4 5
,5 6
TState7 =
,= >
TTrigger? G
>G H
:I J
StateTransitionBaseK ^
<^ _
T_ `
,` a
TStateb h
,h i
TTriggerj r
>r s
{ 
public 
TState 
ToState 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
	protected %
StateTransitionNonDynamic +
(+ ,
Func, 0
<0 1
T1 2
,2 3
TState4 :
>: ;
stateAccessor< I
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
TState 
toState 
, 
string 
name 
, 
uint 
priority 
) 
: 	
base
 
( 
stateAccessor 
, 
stateMutator *
,* +
name, 0
,0 1
priority2 :
): ;
{ 	
ToState 
= 
toState 
; 
} 	
	protected !
StateTransitionResult '
<' (
TState( .
,. /
TTrigger0 8
>8 9
ExecutePrim: E
(E F
ExecutionParametersF Y
<Y Z
TZ [
,[ \
TTrigger] e
>e f

parametersg q
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
,A B
boolC G
conditionMetH T
)T U
{ 	
var   

startState   
=   
currentResult   *
!=  + -
null  . 2
?  3 4
currentResult  5 B
.  B C
StartingState  C P
:  Q R
StateAccessor  S `
(  ` a

parameters  a k
.  k l
Context  l s
)  s t
;  t u
if"" 
("" 
!"" 
conditionMet"" 
)"" 
{## 
return## 
GetFreshResult## #
(### $

parameters##$ .
,##. /
currentResult##0 =
,##= >

startState##? I
,##I J
wasCancelled##K W
:##W X
false##Y ^
,##^ _
conditionMet##` l
:##l m
false##n s
,##s t
transitionDefined	##u �
:
##� �
true
##� �
)
##� �
;
##� �
}
##� �
StateMutator%% 
(%% 

parameters%% #
.%%# $
Context%%$ +
,%%+ ,
ToState%%- 4
)%%4 5
;%%5 6
var&& 
transitionResult&&  
=&&! "
GetFreshResult&&# 1
(&&1 2

parameters&&2 <
,&&< =
currentResult&&> K
,&&K L

startState&&M W
,&&W X
wasCancelled&&Y e
:&&e f
false&&g l
,&&l m
conditionMet&&n z
:&&z {
true	&&| �
,
&&� �
transitionDefined
&&� �
:
&&� �
true
&&� �
)
&&� �
;
&&� �
NotifyOfTransition'' 
('' 

parameters'' )
.'') *
Context''* 1
,''1 2
transitionResult''3 C
)''C D
;''D E
return)) 
transitionResult)) #
;))# $
}** 	
}++ 
},, �
^C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class (
StateTransitionParameterized /
</ 0
T0 1
,1 2
TState3 9
,9 :
TTrigger; C
,C D
TParamE K
>K L
:M N%
StateTransitionNonDynamicO h
<h i
Ti j
,j k
TStatel r
,r s
TTriggert |
>| }
where 
TParam 
: 
class 
{ 
public 
Func 
< 
T 
, 
TParam 
, 
bool #
># $
	Condition% .
{/ 0
get1 4
;4 5
}6 7
public (
StateTransitionParameterized +
(+ ,
Func, 0
<0 1
T1 2
,2 3
TState4 :
>: ;
stateAccessor< I
,I J
ActionK Q
<Q R
TR S
,S T
TStateU [
>[ \
stateMutator] i
,i j
TStatek q
toStater y
,y z
Func{ 
<	 �
T
� �
,
� �
TParam
� �
,
� �
bool
� �
>
� �
	condition
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
toState0 7
,7 8
name9 =
,= >
priority? G
)G H
{ 	
	Condition
 
= 
	condition 
??  "
throw# (
new) ,!
ArgumentNullException- B
(B C
nameofC I
(I J
	conditionJ S
)S T
)T U
;U V
}W X
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
=B C
nullD H
)H I
{ 	
if 
( 
! 
( 

parameters 
. 
Request $
is% '
TParam( .
typeSafeParam/ <
)< =
)= >
{ 
throw 
new 
ArgumentException )
() *
$"* ,
Expected a , 7
{7 8
typeof8 >
(> ?
TParam? E
)E F
.F G
NameG K
}K L'
 parameter, but received a L g
{g h

parametersh r
.r s
Requests z
?z {
.{ |
GetType	| �
(
� �
)
� �
.
� �
Name
� �
??
� �
$str
� �
}
� �
.
� �
"
� �
)
� �
;
� �
}
� �
return 
ExecutePrim 
( 

parameters )
,) *
currentResult+ 8
,8 9
	Condition: C
(C D

parametersD N
.N O
ContextO V
,V W
typeSafeParamX e
)e f
)f g
;g h
} 	
}   
}!! �9
cC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionParameterizedAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class -
!StateTransitionParameterizedAsync 4
<4 5
T5 6
,6 7
TState8 >
,> ?
TTrigger@ H
,H I
TParamJ P
>P Q
:R S%
StateTransitionNonDynamicT m
<m n
Tn o
,o p
TStateq w
,w x
TTrigger	y �
>
� �
where 
TParam 
: 
class 
{ 
public 
Func 
< 
T 
, 
TParam 
, 
CancellationToken 0
,0 1
Task2 6
<6 7
bool7 ;
>; <
>< =
ConditionAsync> L
{M N
getO R
;R S
}T U
public -
!StateTransitionParameterizedAsync 0
(0 1
Func1 5
<5 6
T6 7
,7 8
TState9 ?
>? @
stateAccessorA N
,N O
ActionP V
<V W
TW X
,X Y
TStateZ `
>` a
stateMutatorb n
,n o
TStatep v
toStatew ~
,~ 
Func
� �
<
� �
T
� �
,
� �
TParam
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
toState0 7
,7 8
name9 =
,= >
priority? G
)G H
{ 	
ConditionAsync 
= 
conditionAsync +
??, .
throw/ 4
new5 8!
ArgumentNullException9 N
(N O
nameofO U
(U V
conditionAsyncV d
)d e
)e f
;f g
} 	
public 
override 
async 
Task "
<" #!
StateTransitionResult# 8
<8 9
TState9 ?
,? @
TTriggerA I
>I J
>J K
ExecuteAsyncL X
(X Y
ExecutionParametersY l
<l m
Tm n
,n o
TTriggerp x
>x y

parameters	z �
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
=B C
nullD H
)H I
{ 	
if 
( 
! 
( 

parameters 
. 
Request $
is% '
TParam( .
typeSafeParam/ <
)< =
)= >
{   
throw   
new   
ArgumentException   )
(  ) *
$"  * ,
Expected a   , 7
{  7 8
typeof  8 >
(  > ?
TParam  ? E
)  E F
.  F G
Name  G K
}  K L'
 parameter, but received a   L g
{  g h

parameters  h r
.  r s
Request  s z
?  z {
.  { |
GetType	  | �
(
  � �
)
  � �
.
  � �
Name
  � �
??
  � �
$str
  � �
}
  � �
.
  � �
"
  � �
)
  � �
;
  � �
}
  � �
var"" 

startState"" 
="" 
currentResult"" *
!=""+ -
null"". 2
?""3 4
currentResult""5 B
.""B C
StartingState""C P
:""Q R
StateAccessor""S `
(""` a

parameters""a k
.""k l
Context""l s
)""s t
;""t u
if$$ 
($$ 

parameters$$ 
.$$ 
CancellationToken$$ ,
.$$, -#
IsCancellationRequested$$- D
)$$D E
{%% 
return&& 
GetFreshResult&& %
(&&% &

parameters&&& 0
,'' 
currentResult'' !
,(( 

startState(( 
,)) 
transitionDefined)) %
:))% &
true))' +
,** 
conditionMet**  
:**  !
false**" '
,++ 
wasCancelled++  
:++  !
true++" &
)++& '
;++' (
}++) *
if-- 
(-- 
!-- 
await-- 
ConditionAsync-- %
(--% &

parameters--& 0
.--0 1
Context--1 8
,--8 9
typeSafeParam--: G
,--G H

parameters--I S
.--S T
CancellationToken--T e
)--e f
... 
ConfigureAwait.. 
(.. %
continueOnCapturedContext.. 8
:..8 9
false..: ?
)..? @
)..@ A
{// 
return00 
GetFreshResult00 %
(00% &

parameters00& 0
,000 1
currentResult002 ?
,00? @

startState00A K
,00K L
transitionDefined00M ^
:00^ _
true00` d
,00d e
conditionMet00f r
:00r s
false00t y
,00y z
wasCancelled	00{ �
:
00� �

parameters
00� �
.
00� �
CancellationToken
00� �
.
00� �%
IsCancellationRequested
00� �
)
00� �
;
00� �
}11 
StateMutator33 
(33 

parameters33 #
.33# $
Context33$ +
,33+ ,
ToState33- 4
)334 5
;335 6
var44 
transitionResult44  
=44! "
currentResult44# 0
==441 3
null444 8
?55 
new55 !
StateTransitionResult55 +
<55+ ,
TState55, 2
,552 3
TTrigger554 <
>55< =
(55= >

parameters55> H
.55H I
Trigger55I P
,55P Q

startState55R \
,55\ ]

startState55^ h
,55h i
ToState55j q
,55q r
Name55s w
)55w x
:66 
new66 !
StateTransitionResult66 +
<66+ ,
TState66, 2
,662 3
TTrigger664 <
>66< =
(66= >

parameters66> H
.66H I
Trigger66I P
,66P Q

startState66R \
,66\ ]
currentResult66^ k
.66k l
CurrentState66l x
,66x y
ToState	66z �
,
66� �
Name
66� �
)
66� �
;
66� �
NotifyOfTransition77 
(77 

parameters77 )
.77) *
Context77* 1
,771 2
transitionResult773 C
)77C D
;77D E
return99 
transitionResult99 #
;99# $
}:: 	
};; 
}<< �
WC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionResult.cs
	namespace 	
NStateManager
 
{ 
public 

sealed 
class !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
{ 
public 
bool 
ConditionMet  
{! "
get# &
;& '
}( )
public 
TState 
CurrentState "
{# $
get% (
;( )
internal* 2
set3 6
;6 7
}8 9
public"" 
string"" 
LastTransitionName"" (
{"") *
get""+ .
;"". /
internal""0 8
set""9 <
;""< =
}""> ?
public'' 
TState'' 
PreviousState'' #
{''$ %
get''& )
;'') *
internal''+ 3
set''4 7
;''7 8
}''9 :
public,, 
TState,, 
StartingState,, #
{,,$ %
get,,& )
;,,) *
},,+ ,
public11 
bool11 
TransitionDefined11 %
{11& '
get11( +
;11+ ,
}11- .
public66 
TTrigger66 
Trigger66 
{66  !
get66" %
;66% &
}66' (
public;; 
bool;; 
WasCancelled;;  
{;;! "
get;;# &
;;;& '
};;( )
publicAA 
boolAA 
WasTransitionedAA #
{AA$ %
getAA& )
;AA) *
}AA+ ,
publicNN !
StateTransitionResultNN $
(NN$ %
TTriggerNN% -
triggerNN. 5
,OO
 
TStateOO 
startingStateOO  
,PP
 
TStatePP 
previousStatePP  
,QQ
 
TStateQQ 
currentStateQQ 
,RR
 
stringRR 
lastTransitionNameRR %
,SS
 
boolSS 
transitionDefinedSS "
=SS# $
trueSS% )
,TT
 
boolTT 
conditionMetTT 
=TT 
trueTT  $
,UU
 
boolUU 
wasCancelledUU 
=UU 
falseUU  %
)UU% &
{VV 	
TriggerWW 
=WW 
triggerWW 
;WW 
StartingStateXX 
=XX 
startingStateXX )
;XX) *
PreviousStateYY 
=YY 
previousStateYY )
;YY) *
CurrentStateZZ 
=ZZ 
currentStateZZ '
;ZZ' (
LastTransitionName[[ 
=[[  
lastTransitionName[[! 3
;[[3 4
WasTransitioned\\ 
=\\ 
transitionDefined\\ /
&&\\0 2
conditionMet\\3 ?
&&\\@ B
!\\C D
wasCancelled\\D P
;\\P Q
TransitionDefined]] 
=]] 
transitionDefined]]  1
;]]1 2
ConditionMet^^ 
=^^ 
transitionDefined^^ ,
&&^^- /
conditionMet^^0 <
;^^< =
WasCancelled__ 
=__ 
wasCancelled__ '
;__' (
}`` 	
}aa 
}bb �
UC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\TransitionEventArgs.cs
	namespace 	
NStateManager
 
{ 
public 

class 
TransitionEventArgs $
<$ %
T% &
,& '
TState( .
,. /
TTrigger0 8
>8 9
:: ;
	EventArgs< E
{ 
public 
ExecutionParameters "
<" #
T# $
,$ %
TTrigger& .
>. /

Parameters0 :
{; <
get= @
;@ A
}B C
public !
StateTransitionResult $
<$ %
TState% +
,+ ,
TTrigger- 5
>5 6
TransitionResult7 G
{H I
getJ M
;M N
}O P
public   
TransitionEventArgs   "
(  " #
ExecutionParameters  # 6
<  6 7
T  7 8
,  8 9
TTrigger  : B
>  B C

parameters  D N
,  N O!
StateTransitionResult  P e
<  e f
TState  f l
,  l m
TTrigger  n v
>  v w
transitionResult	  x �
)
  � �
{!! 	

Parameters"" 
="" 

parameters"" #
??""$ &
throw""' ,
new""- 0!
ArgumentNullException""1 F
(""F G
nameof""G M
(""M N

parameters""N X
)""X Y
)""Y Z
;""Z [
TransitionResult## 
=## 
transitionResult## /
??##0 2
throw##3 8
new##9 <!
ArgumentNullException##= R
(##R S
nameof##S Y
(##Y Z
transitionResult##Z j
)##j k
)##k l
;##l m
}$$ 	
}%% 
}&& �
OC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\TriggerAction.cs
	namespace 	
NStateManager
 
{ 
internal 
class 
TriggerAction  
<  !
T! "
," #
TTrigger$ ,
>, -
:. /
TriggerActionBase0 A
<A B
TB C
,C D
TTriggerE M
>M N
{ 
internal 
Action 
< 
T 
> 
Action !
{" #
get$ '
;' (
}) *
internal 
TriggerAction 
( 
Action %
<% &
T& '
>' (
action) /
)/ 0
{ 	
Action 
= 
action 
?? 
throw $
new% (!
ArgumentNullException) >
(> ?
nameof? E
(E F
actionF L
)L M
)M N
;N O
} 	
internal 
override 
void 
Execute &
(& '
ExecutionParameters' :
<: ;
T; <
,< =
TTrigger> F
>F G

parametersH R
)R S
{ 	
Action 
. 
Invoke 
( 

parameters $
.$ %
Context% ,
), -
;- .
} 	
} 
} �
SC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\TriggerActionBase.cs
	namespace 	
NStateManager
 
{ 
internal 
abstract 
class 
TriggerActionBase -
<- .
T. /
,/ 0
TTrigger1 9
>9 :
{ 
internal 
abstract 
void 
Execute &
(& '
ExecutionParameters' :
<: ;
T; <
,< =
TTrigger> F
>F G

parametersH R
)R S
;S T
} 
} �
VC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\TriggerActionFactory.cs
	namespace 	
NStateManager
 
{ 
internal 
static 
class  
TriggerActionFactory .
<. /
T/ 0
,0 1
TTrigger2 :
>: ;
{ 
internal 
static 
TriggerActionBase )
<) *
T* +
,+ ,
TTrigger- 5
>5 6
GetTriggerAction7 G
(G H
ActionH N
<N O
TO P
>P Q
actionR X
)X Y
{ 	
return 
new 
TriggerAction $
<$ %
T% &
,& '
TTrigger( 0
>0 1
(1 2
action2 8
)8 9
;9 :
} 	
internal 
static 
TriggerActionBase )
<) *
T* +
,+ ,
TTrigger- 5
>5 6
GetTriggerAction7 G
<G H
TRequestH P
>P Q
(Q R
ActionR X
<X Y
TY Z
,Z [
TRequest\ d
>d e
actionf l
)l m
{ 	
return 
new &
TriggerActionParameterized 1
<1 2
T2 3
,3 4
TTrigger5 =
,= >
TRequest? G
>G H
(H I
actionI O
)O P
;P Q
} 	
internal 
static 
FunctionActionBase *
<* +
T+ ,
>, -
GetTriggerAction. >
(> ?
Func? C
<C D
TD E
,E F
CancellationTokenG X
,X Y
TaskZ ^
>^ _
action` f
)f g
{ 	
return 
new 
FunctionAction %
<% &
T& '
>' (
(( )
action) /
)/ 0
;0 1
}   	
internal"" 
static"" 
FunctionActionBase"" *
<""* +
T""+ ,
>"", -
GetTriggerAction"". >
<""> ?
TRequest""? G
>""G H
(""H I
Func""I M
<""M N
T""N O
,""O P
TRequest""Q Y
,""Y Z
CancellationToken""[ l
,""l m
Task""n r
>""r s
action""t z
)""z {
{## 	
return$$ 
new$$ '
FunctionActionParameterized$$ 2
<$$2 3
T$$3 4
,$$4 5
TRequest$$5 =
>$$= >
($$> ?
action$$? E
)$$E F
;$$F G
}%% 	
}&& 
}'' �
\C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\TriggerActionParameterized.cs
	namespace 	
NStateManager
 
{ 
internal 
class &
TriggerActionParameterized -
<- .
T. /
,/ 0
TTrigger1 9
,9 :
TRequest; C
>C D
:E F
TriggerActionBaseG X
<X Y
TY Z
,Z [
TTrigger\ d
>d e
{ 
internal 
Action 
< 
T 
, 
TRequest #
># $
Action% +
{, -
get. 1
;1 2
}3 4
internal &
TriggerActionParameterized +
(+ ,
Action, 2
<2 3
T3 4
,4 5
TRequest6 >
>> ?
action@ F
)F G
{ 	
Action 
= 
action 
?? 
throw $
new% (!
ArgumentNullException) >
(> ?
nameof? E
(E F
actionF L
)L M
)M N
;N O
} 	
internal 
override 
void 
Execute &
(& '
ExecutionParameters' :
<: ;
T; <
,< =
TTrigger> F
>F G

parametersH R
)R S
{ 	
if 
( 

parameters 
== 
null "
)" #
{$ %
throw& +
new, /!
ArgumentNullException0 E
(E F
nameofF L
(L M

parametersM W
)W X
)X Y
;Y Z
}[ \
if 
( 
! 
( 

parameters 
. 
Request $
is% '
TRequest( 0
typedRequestType1 A
)A B
)B C
{ 
throw 
new 
ArgumentException )
() *
$"* ,
{, -
nameof- 3
(3 4

parameters4 >
.> ?
Request? F
)F G
}G H
 must be of type H Y
{Y Z
typeofZ `
(` a
TRequesta i
)i j
.j k
Namek o
}o p
.p q
"q r
)r s
;s t
}u v
Action 
. 
Invoke 
( 

parameters $
.$ %
Context% ,
,, -
typedRequestType. >
)> ?
;? @
}   	
}!! 
}"" 