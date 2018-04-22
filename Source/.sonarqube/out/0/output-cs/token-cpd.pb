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
$str++  
)++  !
]++! "
[,, 
assembly,, 	
:,,	 

AssemblyFileVersion,, 
(,, 
$str,, $
),,$ %
],,% &�
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
}!! �
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
}"" �_
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
IStateConfiguration 
< 
T 
, 
TState %
,% &
TTrigger' /
>/ 0%
AddAutoFallbackTransition1 J
(J K
FuncK O
<O P
TP Q
,Q R
boolS W
>W X
	conditionY b
,b c
stringd j
namek o
=p q
nullr v
,v w
uintx |
priority	} �
=
� �
$num
� �
)
� �
;
� �
IStateConfiguration"" 
<"" 
T"" 
,"" 
TState"" %
,""% &
TTrigger""' /
>""/ 0%
AddAutoFallbackTransition""1 J
<""J K
TRequest""K S
>""S T
(""T U
Func""U Y
<""Y Z
T""Z [
,""[ \
TRequest""] e
,""e f
bool""g k
>""k l
	condition""m v
,""v w
string""x ~
name	"" �
=
""� �
null
""� �
,
""� �
uint
""� �
priority
""� �
=
""� �
$num
""� �
)
""� �
where## 
TRequest## 
:## 
class## "
;##" #
IStateConfiguration-- 
<-- 
T-- 
,-- 
TState-- %
,--% &
TTrigger--' /
>--/ 0%
AddAutoFallbackTransition--1 J
(--J K
TState--K Q
previousState--R _
,--_ `
Func--a e
<--e f
T--f g
,--g h
bool--i m
>--m n
	condition--o x
,--x y
string	--z �
name
--� �
=
--� �
null
--� �
,
--� �
uint
--� �
priority
--� �
=
--� �
$num
--� �
)
--� �
;
--� �
IStateConfiguration88 
<88 
T88 
,88 
TState88 %
,88% &
TTrigger88' /
>88/ 0%
AddAutoFallbackTransition881 J
<88J K
TRequest88K S
>88S T
(88T U
TState88U [
previousState88\ i
,88i j
Func88k o
<88o p
T88p q
,88q r
TRequest88s {
,88{ |
bool	88} �
>
88� �
	condition
88� �
,
88� �
string
88� �
name
88� �
=
88� �
null
88� �
,
88� �
uint
88� �
priority
88� �
=
88� �
$num
88� �
)
88� �
where99 
TRequest99 
:99 
class99 "
;99" #
IStateConfigurationCC 
<CC 
TCC 
,CC 
TStateCC %
,CC% &
TTriggerCC' /
>CC/ 0$
AddAutoForwardTransitionCC1 I
(CCI J
TStateCCJ P
toStateCCQ X
,CCX Y
FuncCCZ ^
<CC^ _
TCC_ `
,CC` a
boolCCb f
>CCf g
	conditionCCh q
=CCr s
nullCCt x
,CCx y
string	CCz �
name
CC� �
=
CC� �
null
CC� �
,
CC� �
uint
CC� �
priority
CC� �
=
CC� �
$num
CC� �
)
CC� �
;
CC� �
IStateConfigurationNN 
<NN 
TNN 
,NN 
TStateNN %
,NN% &
TTriggerNN' /
>NN/ 0$
AddAutoForwardTransitionNN1 I
<NNI J
TRequestNNJ R
>NNR S
(NNS T
TStateNNT Z
toStateNN[ b
,NNb c
FuncNNd h
<NNh i
TNNi j
,NNj k
TRequestNNl t
,NNt u
boolNNv z
>NNz {
	condition	NN| �
=
NN� �
null
NN� �
,
NN� �
string
NN� �
name
NN� �
=
NN� �
null
NN� �
,
NN� �
uint
NN� �
priority
NN� �
=
NN� �
$num
NN� �
)
NN� �
whereOO 
TRequestOO 
:OO 
classOO "
;OO" #
IStateConfigurationZZ 
<ZZ 
TZZ 
,ZZ 
TStateZZ %
,ZZ% &
TTriggerZZ' /
>ZZ/ 0$
AddAutoForwardTransitionZZ1 I
(ZZI J
TStateZZJ P
toStateZZQ X
,ZZX Y
FuncZZZ ^
<ZZ^ _
TZZ_ `
,ZZ` a
boolZZb f
>ZZf g
	conditionZZh q
,ZZq r
TStateZZs y
previousState	ZZz �
,
ZZ� �
string
ZZ� �
name
ZZ� �
=
ZZ� �
null
ZZ� �
,
ZZ� �
uint
ZZ� �
priority
ZZ� �
=
ZZ� �
$num
ZZ� �
)
ZZ� �
;
ZZ� �
IStateConfigurationff 
<ff 
Tff 
,ff 
TStateff %
,ff% &
TTriggerff' /
>ff/ 0$
AddAutoForwardTransitionff1 I
<ffI J
TRequestffJ R
>ffR S
(ffS T
TStateffT Z
toStateff[ b
,ffb c
Funcffd h
<ffh i
Tffi j
,ffj k
TRequestffl t
,fft u
boolffv z
>ffz {
	condition	ff| �
,
ff� �
TState
ff� �
previousState
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
ff� �
wheregg 
TRequestgg 
:gg 
classgg "
;gg" #
IStateConfigurationqq 
<qq 
Tqq 
,qq 
TStateqq %
,qq% &
TTriggerqq' /
>qq/ 0 
AddDynamicTransitionqq1 E
(qqE F
TTriggerqqF N
triggerqqO V
,qqV W
FuncqqX \
<qq\ ]
Tqq] ^
,qq^ _
TStateqq` f
>qqf g
functionqqh p
,qqp q
stringqqr x
nameqqy }
=qq~ 
null
qq� �
,
qq� �
uint
qq� �
priority
qq� �
=
qq� �
$num
qq� �
)
qq� �
;
qq� �
IStateConfiguration|| 
<|| 
T|| 
,|| 
TState|| %
,||% &
TTrigger||' /
>||/ 0 
AddDynamicTransition||1 E
<||E F
TRequest||F N
>||N O
(||O P
TTrigger||P X
trigger||Y `
,||` a
Func||b f
<||f g
T||g h
,||h i
TRequest||j r
,||r s
TState||t z
>||z {
function	||| �
,
||� �
string
||� �
name
||� �
=
||� �
null
||� �
,
||� �
uint
||� �
priority
||� �
=
||� �
$num
||� �
)
||� �
where}} 
TRequest}} 
:}} 
class}} "
;}}" #!
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
AddEntryAction
��1 ?
(
��? @
Action
��@ F
<
��F G
T
��G H
>
��H I
action
��J P
)
��P Q
;
��Q R!
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
AddEntryAction
��1 ?
(
��? @
Action
��@ F
<
��F G
T
��G H
>
��H I
action
��J P
,
��P Q
TState
��R X
previousState
��Y f
)
��f g
;
��g h!
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
��/ 0
IsSubStateOf
��1 =
(
��= >!
IStateConfiguration
��> Q
<
��Q R
T
��R S
,
��S T
TState
��U [
,
��[ \
TTrigger
��] e
>
��e f%
superStateConfiguration
��g ~
)
��~ 
;�� �
}
�� 
}�� �p
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
IStateConfigurationAsync  
<  !
T! "
," #
TState$ *
,* +
TTrigger, 4
>4 5%
AddAutoFallbackTransition6 O
(O P
FuncP T
<T U
TU V
,V W
CancellationTokenX i
,i j
Taskk o
<o p
boolp t
>t u
>u v
	condition	w �
,
� �
string
� �
name
� �
=
� �
null
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
;
� �$
IStateConfigurationAsync$$  
<$$  !
T$$! "
,$$" #
TState$$$ *
,$$* +
TTrigger$$, 4
>$$4 5%
AddAutoFallbackTransition$$6 O
<$$O P
TRequest$$P X
>$$X Y
($$Y Z
Func$$Z ^
<$$^ _
T$$_ `
,$$` a
TRequest$$b j
,$$j k
CancellationToken$$l }
,$$} ~
Task	$$ �
<
$$� �
bool
$$� �
>
$$� �
>
$$� �
	condition
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
;%%" #$
IStateConfigurationAsync//  
<//  !
T//! "
,//" #
TState//$ *
,//* +
TTrigger//, 4
>//4 5%
AddAutoFallbackTransition//6 O
(//O P
Func//P T
<//T U
T//U V
,//V W
CancellationToken//X i
,//i j
Task//k o
<//o p
bool//p t
>//t u
>//u v
	condition	//w �
,
//� �
TState
//� �
previousState
//� �
,
//� �
string
//� �
name
//� �
=
//� �
null
//� �
,
//� �
uint
//� �
priority
//� �
=
//� �
$num
//� �
)
//� �
;
//� �$
IStateConfigurationAsync::  
<::  !
T::! "
,::" #
TState::$ *
,::* +
TTrigger::, 4
>::4 5%
AddAutoFallbackTransition::6 O
<::O P
TRequest::P X
>::X Y
(::Y Z
Func::Z ^
<::^ _
T::_ `
,::` a
TRequest::b j
,::j k
CancellationToken::l }
,::} ~
Task	:: �
<
::� �
bool
::� �
>
::� �
>
::� �
	condition
::� �
,
::� �
TState
::� �
previousState
::� �
,
::� �
string
::� �
name
::� �
=
::� �
null
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
;;;" #$
IStateConfigurationAsyncFF  
<FF  !
TFF! "
,FF" #
TStateFF$ *
,FF* +
TTriggerFF, 4
>FF4 5$
AddAutoForwardTransitionFF6 N
<FFN O
TRequestFFO W
>FFW X
(FFX Y
TStateFFY _
toStateFF` g
,FFg h
FuncFFi m
<FFm n
TFFn o
,FFo p
TRequestFFq y
,FFy z
CancellationToken	FF{ �
,
FF� �
Task
FF� �
<
FF� �
bool
FF� �
>
FF� �
>
FF� �
	condition
FF� �
,
FF� �
string
FF� �
name
FF� �
=
FF� �
null
FF� �
,
FF� �
uint
FF� �
priority
FF� �
=
FF� �
$num
FF� �
)
FF� �
whereGG 
TRequestGG 
:GG 
classGG "
;GG" #$
IStateConfigurationAsyncRR  
<RR  !
TRR! "
,RR" #
TStateRR$ *
,RR* +
TTriggerRR, 4
>RR4 5$
AddAutoForwardTransitionRR6 N
(RRN O
TStateRRO U
toStateRRV ]
,RR] ^
FuncRR_ c
<RRc d
TRRd e
,RRe f
CancellationTokenRRg x
,RRx y
TaskRRz ~
<RR~ 
bool	RR �
>
RR� �
>
RR� �
	condition
RR� �
,
RR� �
TState
RR� �
previousState
RR� �
,
RR� �
string
RR� �
name
RR� �
=
RR� �
null
RR� �
,
RR� �
uint
RR� �
priority
RR� �
=
RR� �
$num
RR� �
)
RR� �
;
RR� �$
IStateConfigurationAsync\\  
<\\  !
T\\! "
,\\" #
TState\\$ *
,\\* +
TTrigger\\, 4
>\\4 5$
AddAutoForwardTransition\\6 N
(\\N O
TState\\O U
toState\\V ]
,\\] ^
Func\\_ c
<\\c d
T\\d e
,\\e f
CancellationToken\\g x
,\\x y
Task\\z ~
<\\~ 
bool	\\ �
>
\\� �
>
\\� �
	condition
\\� �
,
\\� �
string
\\� �
name
\\� �
=
\\� �
null
\\� �
,
\\� �
uint
\\� �
priority
\\� �
=
\\� �
$num
\\� �
)
\\� �
;
\\� �$
IStateConfigurationAsynchh  
<hh  !
Thh! "
,hh" #
TStatehh$ *
,hh* +
TTriggerhh, 4
>hh4 5$
AddAutoForwardTransitionhh6 N
<hhN O
TRequesthhO W
>hhW X
(hhX Y
TStatehhY _
toStatehh` g
,hhg h
Funchhi m
<hhm n
Thhn o
,hho p
TRequesthhq y
,hhy z
CancellationToken	hh{ �
,
hh� �
Task
hh� �
<
hh� �
bool
hh� �
>
hh� �
>
hh� �
	condition
hh� �
,
hh� �
TState
hh� �
previousState
hh� �
,
hh� �
string
hh� �
name
hh� �
=
hh� �
null
hh� �
,
hh� �
uint
hh� �
priority
hh� �
=
hh� �
$num
hh� �
)
hh� �
whereii 
TRequestii 
:ii 
classii "
;ii" #$
IStateConfigurationAsyncss  
<ss  !
Tss! "
,ss" #
TStatess$ *
,ss* +
TTriggerss, 4
>ss4 5 
AddDynamicTransitionss6 J
(ssJ K
TTriggerssK S
triggerssT [
,ss[ \
Funcss] a
<ssa b
Tssb c
,ssc d
CancellationTokensse v
,ssv w
Taskssx |
<ss| }
TState	ss} �
>
ss� �
>
ss� �
function
ss� �
,
ss� �
string
ss� �
name
ss� �
=
ss� �
null
ss� �
,
ss� �
uint
ss� �
priority
ss� �
=
ss� �
$num
ss� �
)
ss� �
;
ss� �$
IStateConfigurationAsync~~  
<~~  !
T~~! "
,~~" #
TState~~$ *
,~~* +
TTrigger~~, 4
>~~4 5 
AddDynamicTransition~~6 J
<~~J K
TRequest~~K S
>~~S T
(~~T U
TTrigger~~U ]
trigger~~^ e
,~~e f
Func~~g k
<~~k l
T~~l m
,~~m n
TRequest~~o w
,~~w x
CancellationToken	~~y �
,
~~� �
Task
~~� �
<
~~� �
TState
~~� �
>
~~� �
>
~~� �
function
~~� �
,
~~� �
string
~~� �
name
~~� �
=
~~� �
null
~~� �
,
~~� �
uint
~~� �
priority
~~� �
=
~~� �
$num
~~� �
)
~~� �
where 
TRequest 
: 
class "
;" #&
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
AddEntryAction
��6 D
(
��D E
Func
��E I
<
��I J
T
��J K
,
��K L
CancellationToken
��M ^
,
��^ _
Task
��` d
>
��d e
action
��f l
)
��l m
;
��m n&
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
AddEntryAction
��6 D
(
��D E
Func
��E I
<
��I J
T
��J K
,
��K L
CancellationToken
��M ^
,
��^ _
Task
��` d
>
��d e
action
��f l
,
��l m
TState
��n t
previousState��u �
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
��4 5
IsSubStateOf
��6 B
(
��B C&
IStateConfigurationAsync
��C [
<
��[ \
T
��\ ]
,
��] ^
TState
��_ e
,
��e f
TTrigger
��g o
>
��o p&
superStateConfiguration��q �
)��� �
;��� �
}
�� 
}�� �
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
void 
AddSuperState 
( ,
 IStateConfigurationAsyncInternal ;
<; <
T< =
,= >
TState? E
,E F
TTriggerG O
>O P#
superStateConfigurationQ h
)h i
;i j
void 
AddTransition 
( 
TTrigger #
trigger$ +
,+ ,
StateTransitionBase- @
<@ A
TA B
,B C
TStateD J
,J K
TTriggerL T
>T U

transitionV `
)` a
;a b
Task 
< !
StateTransitionResult "
<" #
TState# )
,) *
TTrigger+ 3
>3 4
>4 5&
ExecuteAutoTransitionAsync6 P
(P Q
ExecutionParametersQ d
<d e
Te f
,f g
TTriggerh p
>p q

parametersr |
,
 !
StateTransitionResult !
<! "
TState" (
,( )
TTrigger* 2
>2 3
currentResult4 A
)A B
;B C
Task #
ExecuteEntryActionAsync $
($ %
ExecutionParameters% 8
<8 9
T9 :
,: ;
TTrigger< D
>D E

parametersF P
,P Q!
StateTransitionResultR g
<g h
TStateh n
,n o
TTriggerp x
>x y
currentResult	z �
)
� �
;
� �
Task "
ExecuteExitActionAsync #
(# $
ExecutionParameters$ 7
<7 8
T8 9
,9 :
TTrigger; C
>C D

parametersE O
,O P!
StateTransitionResultQ f
<f g
TStateg m
,m n
TTriggero w
>w x
currentResult	y �
)
� �
;
� �
Task %
ExecuteReentryActionAsync &
(& '
ExecutionParameters' :
<: ;
T; <
,< =
TTrigger> F
>F G

parametersH R
,R S!
StateTransitionResultT i
<i j
TStatej p
,p q
TTriggerr z
>z {
currentResult	| �
)
� �
;
� �
Task 
< !
StateTransitionResult "
<" #
TState# )
,) *
TTrigger+ 3
>3 4
>4 5
FireTriggerAsync6 F
(F G
ExecutionParametersG Z
<Z [
T[ \
,\ ]
TTrigger^ f
>f g

parametersh r
)r s
;s t
TState 
State 
{ 
get 
; 
} 
} 
} �
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
void 
AddSuperState 
( '
IStateConfigurationInternal 6
<6 7
T7 8
,8 9
TState: @
,@ A
TTriggerB J
>J K#
superStateConfigurationL c
)c d
;d e
void 
AddTransition 
( 
TTrigger #
trigger$ +
,+ ,
StateTransitionBase- @
<@ A
TA B
,B C
TStateD J
,J K
TTriggerL T
>T U

transitionV `
)` a
;a b!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /!
ExecuteAutoTransition0 E
(E F
ExecutionParametersF Y
<Y Z
TZ [
,[ \
TTrigger] e
>e f

parametersg q
,q r"
StateTransitionResult	s �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
)
� �
;
� �
void 
ExecuteEntryAction 
(  
T  !
context" )
,) *!
StateTransitionResult+ @
<@ A
TStateA G
,G H
TTriggerI Q
>Q R
currentResultS `
)` a
;a b
void 
ExecuteExitAction 
( 
T  
context! (
,( )!
StateTransitionResult* ?
<? @
TState@ F
,F G
TTriggerH P
>P Q
currentResultR _
)_ `
;` a
void  
ExecuteReentryAction !
(! "
T" #
context$ +
,+ ,!
StateTransitionResult- B
<B C
TStateC I
,I J
TTriggerK S
>S T
currentResultU b
)b c
;c d!
StateTransitionResult 
< 
TState $
,$ %
TTrigger& .
>. /
FireTrigger0 ;
(; <
ExecutionParameters< O
<O P
TP Q
,Q R
TTriggerS [
>[ \

parameters] g
)g h
;h i
bool 
	IsInState 
( 
TState 
state #
)# $
;$ %
TState 
State 
{ 
get 
; 
} 
} 
} �
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
>DD. /'
RegisterOnTransitionedEventDD0 K
(DDK L
ActionDDL R
<DDR S
TDDS T
,DDT U!
StateTransitionResultDDV k
<DDk l
TStateDDl r
,DDr s
TTriggerDDt |
>DD| }
>DD} ~ 
onTransitionedEvent	DD �
)
DD� �
;
DD� �
}EE 
}FF ��
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
private 
Action 
< 
T 
> 
_defaultEntryAction -
;- .
private 
Action 
< 
T 
> 
_defaultExitAction ,
;, -
private   
Action   
<   
T   
>   
_reentryAction   (
;  ( )
private!! '
IStateConfigurationInternal!! +
<!!+ ,
T!!, -
,!!- .
TState!!/ 5
,!!5 6
TTrigger!!7 ?
>!!? @
_superState!!A L
;!!L M
internal)) 
StateConfiguration)) #
())# $
TState))$ *
state))+ 0
,))0 1
Func))2 6
<))6 7
T))7 8
,))8 9
TState)): @
>))@ A
stateAccessor))B O
,))O P
Action))Q W
<))W X
T))X Y
,))Y Z
TState))[ a
>))a b
stateMutator))c o
)))o p
:** 
base** 
(** 
state** 
,** 
stateAccessor** '
,**' (
stateMutator**) 5
)**5 6
{++ 	
}++
 
public44 
IStateConfiguration44 "
<44" #
T44# $
,44$ %
TState44& ,
,44, -
TTrigger44. 6
>446 7%
AddAutoFallbackTransition448 Q
(44Q R
Func44R V
<44V W
T44W X
,44X Y
bool44Z ^
>44^ _
	condition44` i
,44i j
string44k q
name44r v
=44w x
null44y }
,44} ~
uint	44 �
priority
44� �
=
44� �
$num
44� �
)
44� �
{55 	
if66 
(66 
	condition66 
==66 
null66 !
)66! "
{77 
throw77 
new77 !
ArgumentNullException77 -
(77- .
nameof77. 4
(774 5
	condition775 >
)77> ?
)77? @
;77@ A
}77B C
var99 

transition99 
=99 "
StateTransitionFactory99 3
<993 4
T994 5
,995 6
TState997 =
,99= >
TTrigger99? G
>99G H
.99H I
GetStateTransition99I [
(99[ \
StateAccessor99\ i
,:: 
StateMutator:: 
,;; 
State;; 
,<< 
State<< 
,== 
	condition== 
,>> 
name>> 
,?? 
priority?? 
)?? 
;?? 
AddAutoTransition@@ 
(@@ 

transition@@ (
)@@( )
;@@) *
returnBB 
thisBB 
;BB 
}CC 	
publicLL 
IStateConfigurationLL "
<LL" #
TLL# $
,LL$ %
TStateLL& ,
,LL, -
TTriggerLL. 6
>LL6 7%
AddAutoFallbackTransitionLL8 Q
<LLQ R
TRequestLLR Z
>LLZ [
(LL[ \
FuncLL\ `
<LL` a
TLLa b
,LLb c
TRequestLLd l
,LLl m
boolLLn r
>LLr s
	conditionLLt }
,MM
 
stringMM 
nameMM 
=MM 
nullMM 
,NN
 
uintNN 
priorityNN 
=NN 
$numNN 
)NN 
whereOO 
TRequestOO 
:OO 
classOO "
{PP 	
ifQQ 
(QQ 
	conditionQQ 
==QQ 
nullQQ !
)QQ! "
{RR 
throwRR 
newRR !
ArgumentNullExceptionRR -
(RR- .
nameofRR. 4
(RR4 5
	conditionRR5 >
)RR> ?
)RR? @
;RR@ A
}RRB C
varTT 

transitionTT 
=TT "
StateTransitionFactoryTT 3
<TT3 4
TTT4 5
,TT5 6
TStateTT7 =
,TT= >
TTriggerTT? G
>TTG H
.TTH I
GetStateTransitionTTI [
(TT[ \
StateAccessorTT\ i
,UU 
StateMutatorUU 
,VV 
StateVV 
,WW 
StateWW 
,XX 
	conditionXX 
,YY 
nameYY 
,ZZ 
priorityZZ 
)ZZ 
;ZZ 
AddAutoTransition[[ 
([[ 

transition[[ (
)[[( )
;[[) *
return]] 
this]] 
;]] 
}^^ 	
publichh 
IStateConfigurationhh "
<hh" #
Thh# $
,hh$ %
TStatehh& ,
,hh, -
TTriggerhh. 6
>hh6 7%
AddAutoFallbackTransitionhh8 Q
(hhQ R
TStatehhR X
previousStatehhY f
,ii
 
Funcii 
<ii 
Tii 
,ii 
boolii 
>ii 
	conditionii #
,jj
 
stringjj 
namejj 
=jj 
nulljj 
,kk
 
uintkk 
prioritykk 
=kk 
$numkk 
)kk 
{ll 	
ifmm 
(mm 
	conditionmm 
==mm 
nullmm !
)mm! "
{nn 
thrownn 
newnn !
ArgumentNullExceptionnn -
(nn- .
nameofnn. 4
(nn4 5
	conditionnn5 >
)nn> ?
)nn? @
;nn@ A
}nnB C
varpp 

transitionpp 
=pp "
StateTransitionFactorypp 3
<pp3 4
Tpp4 5
,pp5 6
TStatepp7 =
,pp= >
TTriggerpp? G
>ppG H
.ppH I
GetStateTransitionppI [
(pp[ \
StateAccessorpp\ i
,qq 
StateMutatorqq 
,rr 
Staterr 
,ss 
Statess 
,tt 
	conditiontt 
,uu 
nameuu 
,vv 
priorityvv 
)vv 
;vv 
AddAutoTransitionww 
(ww 

transitionww (
)ww( )
;ww) *
returnyy 
thisyy 
;yy 
}zz 	
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
��[ \
TState
��\ b
previousState
��c p
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
��P Q
TState
��Q W
toState
��X _
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
�� 

transition
�� (
)
��( )
;
��) *
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
��Z [
TState
��[ a
toState
��b i
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
�� 

transition
�� (
)
��( )
;
��) *
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
��P Q
TState
��Q W
toState
��X _
,
�� 
Func
�� 
<
�� 
T
�� 
,
�� 
bool
�� 
>
�� 
	condition
�� %
,
�� 
TState
�� 
previousState
�� "
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
return
�� 
this
�� 
;
�� 
}
�� 	
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
��6 7&
AddAutoForwardTransition
��8 P
<
��P Q
TRequest
��Q Y
>
��Y Z
(
��Z [
TState
��[ a
toState
��b i
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
TState
�� 
previousState
�� "
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
toState
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
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
AddTransition
��8 E
<
��E F
TRequest
��F N
>
��N O
(
��O P
TTrigger
��P X
trigger
��Y `
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
�� 
bool
��  $
>
��$ %
	condition
��& /
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
�� 
	condition
�� 
==
�� 
null
�� !
)
��! "
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
��4 5
	condition
��5 >
)
��> ?
)
��? @
;
��@ A
}
��B C
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
	condition
�� 
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
)
��W X
{
�� 	
if
�� 
(
�� !
_defaultEntryAction
�� #
!=
��$ &
null
��' +
)
��+ ,
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
��2 a
)
��a b
;
��b c
}
��d e!
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
�� )
ArgumentOutOfRangeException
�� 3
(
��3 4
$"
��4 6
{
��6 7%
superStateConfiguration
��7 N
.
��N O
State
��O T
}
��T U)
 is already a sub-state of 
��U p
{
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
��| }
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
�� 	
if
�� 
(
�� 
_triggerActions
�� 
.
��  
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 41
#Only one action is allowed for the 
��4 W
{
��W X
trigger
��X _
}
��_ `
	 trigger.
��` i
"
��i j
)
��j k
;
��k l
}
��m n
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
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
AddTriggerAction
��8 H
<
��H I
TRequest
��I Q
>
��Q R
(
��R S
TTrigger
��S [
trigger
��\ c
,
��c d
Action
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
>
�� 
action
��  &
)
��& '
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
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4-
Only one action is allowed for 
��4 S
{
��S T
trigger
��T [
}
��[ \
	 trigger.
��\ e
"
��e f
)
��f g
;
��g h
}
��i j
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
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
��5 6#
ExecuteAutoTransition
��7 L
(
��L M!
ExecutionParameters
��M `
<
��` a
T
��a b
,
��b c
TTrigger
��d l
>
��l m

parameters
��n x
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
��2 3
localResult
��4 ?
;
��? @
if
�� 
(
�� *
AutoPreviousStateTransitions
�� ,
.
��, -
TryGetValue
��- 8
(
��8 9
currentResult
��9 F
.
��F G
PreviousState
��G T
,
��T U
out
��V Y
var
��Z ]&
previousStateTransitions
��^ v
)
��v w
)
��w x
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
��( *&
previousStateTransitions
��+ C
.
��C D
OrderBy
��D K
(
��K L
t
��L M
=>
��N P
t
��Q R
.
��R S
Priority
��S [
)
��[ \
)
��\ ]
{
�� 
localResult
�� 
=
��  !

transition
��" ,
.
��, -
Execute
��- 4
(
��4 5

parameters
��5 ?
,
��? @
currentResult
��A N
)
��N O
;
��O P
if
�� 
(
�� 
localResult
�� #
.
��# $
WasSuccessful
��$ 1
)
��1 2
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
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� #
in
��$ &
AutoTransitions
��' 6
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
�� 
localResult
�� 
=
�� 

transition
�� (
.
��( )
Execute
��) 0
(
��0 1

parameters
��1 ;
,
��; <
currentResult
��= J
)
��J K
;
��K L
if
�� 
(
�� 
localResult
�� 
.
��  
WasSuccessful
��  -
)
��- .
{
�� 
return
�� 
localResult
�� $
;
��$ %
}
��& '
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
��! "
StartingState
��" /
,
�� 
currentResult
�� !
.
��! "
PreviousState
��" /
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
��! " 
LastTransitionName
��" 4
,
�� 
transitionDefined
�� %
:
��% &
true
��' +
)
��+ ,
;
��, -
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
�� 
WasSuccessful
�� '
??
��( *
false
��+ 0
)
��0 1
&&
��2 4
_superState
��5 @
!=
��A C
null
��D H
)
��H I
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
�� !
IStateConfiguration
�� "
<
��" #
T
��# $
,
��$ %
TState
��& ,
,
��, -
TTrigger
��. 6
>
��6 7
IsSubStateOf
��8 D
(
��D E!
IStateConfiguration
��E X
<
��X Y
T
��Y Z
,
��Z [
TState
��\ b
,
��b c
TTrigger
��d l
>
��l m&
superStateConfiguration��n �
)��� �
{
�� 	
AddSuperState
�� 
(
�� %
superStateConfiguration
�� 1
as
��2 4)
IStateConfigurationInternal
��5 P
<
��P Q
T
��Q R
,
��R S
TState
��T Z
,
��Z [
TTrigger
��\ d
>
��d e
)
��e f
;
��f g
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
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
new 

Dictionary 
< 
TState !
,! "
Func# '
<' (
T( )
,) *
CancellationToken+ <
,< =
Task> B
>B C
>C D
(D E
)E F
;F G
private   
readonly   

Dictionary   #
<  # $
TState  $ *
,  * +
Func  , 0
<  0 1
T  1 2
,  2 3
CancellationToken  4 E
,  E F
Task  G K
>  K L
>  L M!
_nextStateExitActions  N c
=  d e
new!! 

Dictionary!! 
<!! 
TState!! !
,!!! "
Func!!# '
<!!' (
T!!( )
,!!) *
CancellationToken!!+ <
,!!< =
Task!!> B
>!!B C
>!!C D
(!!D E
)!!E F
;!!F G
private## 
Func## 
<## 
T## 
,## 
CancellationToken## )
,##) *
Task##+ /
>##/ 0
_defaultEntryAction##1 D
;##D E
private$$ 
Func$$ 
<$$ 
T$$ 
,$$ 
CancellationToken$$ )
,$$) *
Task$$+ /
>$$/ 0
_defaultExitAction$$1 C
;$$C D
private%% 
Func%% 
<%% 
T%% 
,%% 
CancellationToken%% )
,%%) *
Task%%+ /
>%%/ 0
_reentryAction%%1 ?
;%%? @
private'' 
readonly'' 

Dictionary'' #
<''# $
TTrigger''$ ,
,'', -
FunctionActionBase''. @
<''@ A
T''A B
>''B C
>''C D
_triggerActions''E T
=''U V
new''W Z

Dictionary''[ e
<''e f
TTrigger''f n
,''n o
FunctionActionBase	''p �
<
''� �
T
''� �
>
''� �
>
''� �
(
''� �
)
''� �
;
''� �
private)) ,
 IStateConfigurationAsyncInternal)) 0
<))0 1
T))1 2
,))2 3
TState))4 :
,)): ;
TTrigger))< D
>))D E
_superState))F Q
;))Q R
internal11 #
StateConfigurationAsync11 (
(11( )
TState11) /
state110 5
,115 6
Func117 ;
<11; <
T11< =
,11= >
TState11? E
>11E F
stateAccessor11G T
,11T U
Action11V \
<11\ ]
T11] ^
,11^ _
TState11` f
>11f g
stateMutator11h t
)11t u
:22 
base22 
(22 
state22 
,22 
stateAccessor22 '
,22' (
stateMutator22) 5
)225 6
{33 	
}33
 
public== $
IStateConfigurationAsync== '
<==' (
T==( )
,==) *
TState==+ 1
,==1 2
TTrigger==3 ;
>==; <$
AddAutoForwardTransition=== U
(==U V
TState==V \
toState==] d
,>>
 
Func>> 
<>> 
T>> 
,>> 
CancellationToken>> %
,>>% &
Task>>' +
<>>+ ,
bool>>, 0
>>>0 1
>>>1 2
	condition>>3 <
,??
 
string?? 
name?? 
=?? 
null?? 
,@@
 
uint@@ 
priority@@ 
=@@ 
$num@@ 
)@@ 
{AA 	
ifBB 
(BB 
	conditionBB 
==BB 
nullBB !
)BB! "
{CC 
throwCC 
newCC !
ArgumentNullExceptionCC -
(CC- .
nameofCC. 4
(CC4 5
	conditionCC5 >
)CC> ?
)CC? @
;CC@ A
}CCB C
varEE 

transitionEE 
=EE "
StateTransitionFactoryEE 3
<EE3 4
TEE4 5
,EE5 6
TStateEE7 =
,EE= >
TTriggerEE? G
>EEG H
.EEH I
GetStateTransitionEEI [
(EE[ \
StateAccessorEE\ i
,FF 
StateMutatorFF 
,GG 
StateGG 
,HH 
toStateHH 
,II 
	conditionII 
,JJ 
nameJJ 
,KK 
priorityKK 
)KK 
;KK 
AddAutoTransitionLL 
(LL 

transitionLL (
)LL( )
;LL) *
returnNN 
thisNN 
;NN 
}OO 	
publicZZ $
IStateConfigurationAsyncZZ '
<ZZ' (
TZZ( )
,ZZ) *
TStateZZ+ 1
,ZZ1 2
TTriggerZZ3 ;
>ZZ; <$
AddAutoForwardTransitionZZ= U
<ZZU V
TRequestZZV ^
>ZZ^ _
(ZZ_ `
TStateZZ` f
toStateZZg n
,[[
 
Func[[ 
<[[ 
T[[ 
,[[ 
TRequest[[ 
,[[ 
CancellationToken[[ /
,[[/ 0
Task[[1 5
<[[5 6
bool[[6 :
>[[: ;
>[[; <
	condition[[= F
,\\
 
string\\ 
name\\ 
=\\ 
null\\ 
,]]
 
uint]] 
priority]] 
=]] 
$num]] 
)]] 
where^^ 
TRequest^^ 
:^^ 
class^^ "
{__ 	
if`` 
(`` 
	condition`` 
==`` 
null`` !
)``! "
{aa 
throwaa 
newaa !
ArgumentNullExceptionaa -
(aa- .
nameofaa. 4
(aa4 5
	conditionaa5 >
)aa> ?
)aa? @
;aa@ A
}aaB C
varcc 

transitioncc 
=cc "
StateTransitionFactorycc 3
<cc3 4
Tcc4 5
,cc5 6
TStatecc7 =
,cc= >
TTriggercc? G
>ccG H
.ccH I
GetStateTransitionccI [
(cc[ \
StateAccessorcc\ i
,dd 
StateMutatordd 
,ee 
Stateee 
,ff 
toStateff 
,gg 
	conditiongg 
,hh 
namehh 
,ii 
priorityii 
)ii 
;ii 
AddAutoTransitionjj 
(jj 

transitionjj (
)jj( )
;jj) *
returnll 
thisll 
;ll 
}mm 	
publicxx $
IStateConfigurationAsyncxx '
<xx' (
Txx( )
,xx) *
TStatexx+ 1
,xx1 2
TTriggerxx3 ;
>xx; <$
AddAutoForwardTransitionxx= U
(xxU V
TStatexxV \
toStatexx] d
,yy
 
Funcyy 
<yy 
Tyy 
,yy 
CancellationTokenyy %
,yy% &
Taskyy' +
<yy+ ,
boolyy, 0
>yy0 1
>yy1 2
	conditionyy3 <
,zz
 
TStatezz 
previousStatezz  
,{{
 
string{{ 
name{{ 
={{ 
null{{ 
,||
 
uint|| 
priority|| 
=|| 
$num|| 
)|| 
{}} 	
if~~ 
(~~ 
	condition~~ 
==~~ 
null~~ !
)~~! "
{ 
throw 
new !
ArgumentNullException -
(- .
nameof. 4
(4 5
	condition5 >
)> ?
)? @
;@ A
}B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
��; <&
AddAutoForwardTransition
��= U
<
��U V
TRequest
��V ^
>
��^ _
(
��_ `
TState
��` f
toState
��g n
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
TState
�� 
previousState
��  
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
�� 
CancellationToken
�� '
,
��' (
Task
��) -
<
��- .
TState
��. 4
>
��4 5
>
��5 6
function
��7 ?
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
�� 
function
�� 
==
�� 
null
��  
)
��  !
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
��4 5
function
��5 =
)
��= >
)
��> ?
;
��? @
}
��A B
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
function
�� 
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
�� 
CancellationToken
��  1
,
��1 2
Task
��3 7
<
��7 8
TState
��8 >
>
��> ?
>
��? @
function
��A I
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
�� 
function
�� 
==
�� 
null
��  
)
��  !
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
��4 5
function
��5 =
)
��= >
)
��> ?
;
��? @
}
��A B
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
��  
GetStateTransition
�� "
(
��" #
StateAccessor
��# 0
,
�� 
StateMutator
�� "
,
�� 
State
�� 
,
�� 
function
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
��  
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
AddEntryAction
��= K
(
��K L
Func
��L P
<
��P Q
T
��Q R
,
��R S
CancellationToken
��T e
,
��e f
Task
��g k
>
��k l
action
��m s
,
��s t
TState
��u {
previousState��| �
)��� �
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
��4 5
action
��5 ;
)
��; <
)
��< =
;
��= >
}
��? @
if
�� 
(
�� (
_previousStateEntryActions
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
previousState
��7 D
)
��D E
)
��E F
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
��2 g
)
��g h
;
��h i
}
��j k(
_previousStateEntryActions
�� &
.
��& '
Add
��' *
(
��* +
previousState
��+ 8
,
��8 9
action
��: @
)
��@ A
;
��A B
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
��; <
AddExitAction
��= J
(
��J K
Func
��K O
<
��O P
T
��P Q
,
��Q R
CancellationToken
��S d
,
��d e
Task
��f j
>
��j k
action
��l r
)
��r s
{
�� 	
if
�� 
(
��  
_defaultExitAction
�� "
!=
��# %
null
��& *
)
��* +
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
��2 T
)
��T U
;
��U V
}
��W X 
_defaultExitAction
�� 
=
��  
action
��! '
??
��( *
throw
��+ 0
new
��1 4#
ArgumentNullException
��5 J
(
��J K
nameof
��K Q
(
��Q R
action
��R X
)
��X Y
)
��Y Z
;
��Z [
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
��; <
AddExitAction
��= J
(
��J K
Func
��K O
<
��O P
T
��P Q
,
��Q R
CancellationToken
��S d
,
��d e
Task
��f j
>
��j k
action
��l r
,
��r s
TState
��t z
	nextState��{ �
)��� �
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
��; <'
AddAutoFallbackTransition
��= V
(
��V W
Func
��W [
<
��[ \
T
��\ ]
,
��] ^
CancellationToken
��_ p
,
��p q
Task
��r v
<
��v w
bool
��w {
>
��{ |
>
��| }
	condition��~ �
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
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
�� 
AddAutoTransition
�� 
(
�� 

transition
�� (
)
��( )
;
��) *
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
��` a
Func
��a e
<
��e f
T
��f g
,
��g h
TRequest
��i q
,
��q r 
CancellationToken��s �
,��� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
	condition��� �
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
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
�� 
AddAutoTransition
�� 
(
�� 

transition
�� (
)
��( )
;
��) *
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
��V W
Func
��W [
<
��[ \
T
��\ ]
,
��] ^
CancellationToken
��_ p
,
��p q
Task
��r v
<
��v w
bool
��w {
>
��{ |
>
��| }
	condition��~ �
,
��
 
TState
�� 
previousState
��  
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
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
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
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
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
��` a
Func
��a e
<
��e f
T
��f g
,
��g h
TRequest
��i q
,
��q r 
CancellationToken��s �
,��� �
Task��� �
<��� �
bool��� �
>��� �
>��� �
	condition��� �
,
��
 
TState
�� 
previousState
��  
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
��B C
if
�� 
(
�� 
!
�� *
AutoPreviousStateTransitions
�� -
.
��- .
TryGetValue
��. 9
(
��9 :
previousState
��: G
,
��G H
out
��I L
var
��M P
transitions
��Q \
)
��\ ]
)
��] ^
{
�� 
transitions
�� 
=
�� 
new
�� !
List
��" &
<
��& '!
StateTransitionBase
��' :
<
��: ;
T
��; <
,
��< =
TState
��> D
,
��D E
TTrigger
��F N
>
��N O
>
��O P
(
��P Q
)
��Q R
;
��R S*
AutoPreviousStateTransitions
�� ,
.
��, -
Add
��- 0
(
��0 1
previousState
��1 >
,
��> ?
transitions
��@ K
)
��K L
;
��L M
}
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
,
�� 
	condition
�� 
,
�� 
name
�� 
,
�� 
priority
�� 
)
�� 
;
�� 
transitions
�� 
.
�� 
Add
�� 
(
�� 

transition
�� &
)
��& '
;
��' (
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
AddReentryAction
��= M
(
��M N
Func
��N R
<
��R S
T
��S T
,
��T U
CancellationToken
��V g
,
��g h
Task
��i m
>
��m n
action
��o u
)
��u v
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
�� 
void
�� 
AddSuperState
�� !
(
��! ".
 IStateConfigurationAsyncInternal
��" B
<
��B C
T
��C D
,
��D E
TState
��F L
,
��L M
TTrigger
��N V
>
��V W%
superStateConfiguration
��X o
)
��o p
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
�� )
ArgumentOutOfRangeException
�� 3
(
��3 4
$"
��4 6
{
��6 7%
superStateConfiguration
��7 N
.
��N O
State
��O T
}
��T U)
 is already a sub-state of 
��U p
{
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
��| }
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
StateAccessor
��\ i
,
�� 
StateMutator
�� 
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
AddTriggerAction
��= M
<
��M N
TRequest
��N V
>
��V W
(
��W X
TTrigger
��X `
trigger
��a h
,
��
 
Func
�� 
<
�� 
T
�� 
,
�� 
TRequest
�� 
,
�� 
CancellationToken
�� /
,
��/ 0
Task
��1 5
>
��5 6
action
��7 =
)
��= >
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
ContainsKey
��  +
(
��+ ,
trigger
��, 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 4-
Only one action is allowed for 
��4 S
{
��S T
trigger
��T [
}
��[ \
	 trigger.
��\ e
"
��e f
)
��f g
;
��g h
}
��i j
_triggerActions
�� 
.
�� 
Add
�� 
(
��  
trigger
��  '
,
��' ("
TriggerActionFactory
��) =
<
��= >
T
��> ?
,
��? @
TTrigger
��A I
>
��I J
.
��J K
GetTriggerAction
��K [
(
��[ \
action
��\ b
)
��b c
)
��c d
;
��d e
return
�� 
this
�� 
;
�� 
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
��A B(
ExecuteAutoTransitionAsync
��C ]
(
��] ^!
ExecutionParameters
��^ q
<
��q r
T
��r s
,
��s t
TTrigger
��u }
>
��} ~

parameters�� �
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
��2 3
localResult
��4 ?
;
��? @
if
�� 
(
�� *
AutoPreviousStateTransitions
�� ,
.
��, -
TryGetValue
��- 8
(
��8 9
currentResult
��9 F
.
��F G
PreviousState
��G T
,
��T U
out
��V Y
var
��Z ]&
previousStateTransitions
��^ v
)
��v w
)
��w x
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
��( *&
previousStateTransitions
��+ C
.
��C D
OrderBy
��D K
(
��K L
t
��L M
=>
��N P
t
��Q R
.
��R S
Priority
��S [
)
��[ \
)
��\ ]
{
�� 
localResult
�� 
=
��  !
await
��" '

transition
��( 2
.
��2 3
ExecuteAsync
��3 ?
(
��? @

parameters
��@ J
,
��J K
currentResult
��L Y
)
��Y Z
.
��Z [
ConfigureAwait
��[ i
(
��i j(
continueOnCapturedContext��j �
:��� �
false��� �
)��� �
;��� �
if
�� 
(
�� 
localResult
�� #
.
��# $
WasSuccessful
��$ 1
)
��1 2
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
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� #
in
��$ &
AutoTransitions
��' 6
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
�� 
localResult
�� 
=
�� 
await
�� #

transition
��$ .
.
��. /
ExecuteAsync
��/ ;
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
��V W
ConfigureAwait
��W e
(
��e f'
continueOnCapturedContext
��f 
:�� �
false��� �
)��� �
;��� �
if
�� 
(
�� 
localResult
�� 
.
��  
WasSuccessful
��  -
)
��- .
{
�� 
return
�� 
localResult
�� $
;
��$ %
}
��& '
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
�� 
await
�� 
_superState
�� #
.
��# $(
ExecuteAutoTransitionAsync
��$ >
(
��> ?

parameters
��? I
,
��I J
currentResult
��K X
)
��X Y
.
��Y Z
ConfigureAwait
��Z h
(
��h i(
continueOnCapturedContext��i �
:��� �
false��� �
)��� �
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
�� 
currentResult
�� #
.
��# $
StartingState
��$ 1
,
�� 
currentResult
�� #
.
��# $
PreviousState
��$ 1
,
�� 
currentResult
�� #
.
��# $
CurrentState
��$ 0
,
�� 
currentResult
�� #
.
��# $ 
LastTransitionName
��$ 6
,
�� 
transitionDefined
�� '
:
��' (
true
��) -
,
�� 
wasCancelled
�� "
:
��" #

parameters
��$ .
.
��. /
CancellationToken
��/ @
.
��@ A%
IsCancellationRequested
��A X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
async
�� 
Task
�� %
ExecuteEntryActionAsync
�� 1
(
��1 2!
ExecutionParameters
��2 E
<
��E F
T
��F G
,
��G H
TTrigger
��I Q
>
��Q R

parameters
��S ]
,
��] ^#
StateTransitionResult
��_ t
<
��t u
TState
��u {
,
��{ |
TTrigger��} �
>��� �
currentResult��� �
)��� �
{
�� 	
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
�� 
WasSuccessful
�� '
??
��( *
false
��+ 0
)
��0 1
&&
��2 4
_superState
��5 @
!=
��A C
null
��D H
)
��H I
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
�� 
var
�� 

startState
�� 
=
��  
StateAccessor
��! .
(
��. /

parameters
��/ 9
.
��9 :
Context
��: A
)
��A B
;
��B C
result
�� 
=
�� 
result
�� 
??
��  "
new
��# &#
StateTransitionResult
��' <
<
��< =
TState
��= C
,
��C D
TTrigger
��E M
>
��M N
(
��N O

parameters
��O Y
.
��Y Z
Trigger
��Z a
,
�� 

startState
��  
,
�� 

startState
��  
,
�� 

startState
��  
,
��  
lastTransitionName
�� (
:
��( )
string
��* 0
.
��0 1
Empty
��1 6
,
�� 
transitionDefined
�� '
:
��' (
false
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� #
StateTransitionResult
�� 0
<
��0 1
TState
��1 7
,
��7 8
TTrigger
��9 A
>
��A B
>
��B C"
FireTriggerPrimAsync
��D X
(
��X Y!
ExecutionParameters
��Y l
<
��l m
T
��m n
,
��n o
TTrigger
��p x
>
��x y

parameters��z �
)��� �
{
�� 	#
StateTransitionResult
�� !
<
��! "
TState
��" (
,
��( )
TTrigger
��* 2
>
��2 3
result
��4 :
=
��; <
null
��= A
;
��A B
if
�� 
(
�� 
Transitions
�� 
.
�� 
TryGetValue
�� '
(
��' (

parameters
��( 2
.
��2 3
Trigger
��3 :
,
��: ;
out
��< ?
var
��@ C
transitions
��D O
)
��O P
)
��P Q
{
�� 
foreach
�� 
(
�� 
var
�� 

transition
�� '
in
��( *
transitions
��+ 6
.
��6 7
OrderBy
��7 >
(
��> ?
t
��? @
=>
��A C
t
��D E
.
��E F
Priority
��F N
)
��N O
)
��O P
{
�� 
result
�� 
=
�� 
await
�� "

transition
��# -
.
��- .
ExecuteAsync
��. :
(
��: ;

parameters
��; E
)
��E F
.
��F G
ConfigureAwait
��G U
(
��U V'
continueOnCapturedContext
��V o
:
��o p
false
��q v
)
��v w
;
��w x
if
�� 
(
�� 
result
�� 
.
�� 
WasSuccessful
�� ,
)
��, -
{
�� 
return
�� 
result
�� #
;
��# $
}
��% &
}
�� 
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
	IsInState
�� 
(
�� 
TState
�� $
state
��% *
)
��* +
{
�� 	
if
�� 
(
�� 
state
�� 
.
�� 
	CompareTo
�� 
(
��  
State
��  %
)
��% &
==
��' )
$num
��* +
)
��+ ,
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
_superState
�� 
?
�� 
.
��  
	IsInState
��  )
(
��) *
state
��* /
)
��/ 0
??
��1 3
false
��4 9
;
��9 :
}
�� 	
public
�� &
IStateConfigurationAsync
�� '
<
��' (
T
��( )
,
��) *
TState
��+ 1
,
��1 2
TTrigger
��3 ;
>
��; <
IsSubStateOf
��= I
(
��I J&
IStateConfigurationAsync
��J b
<
��b c
T
��c d
,
��d e
TState
��f l
,
��l m
TTrigger
��n v
>
��v w&
superStateConfiguration��x �
)��� �
{
�� 	
AddSuperState
�� 
(
�� %
superStateConfiguration
�� 1
as
��2 4.
 IStateConfigurationAsyncInternal
��5 U
<
��U V
T
��V W
,
��W X
TState
��Y _
,
��_ `
TTrigger
��a i
>
��i j
)
��j k
;
��k l
return
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �E
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
internal 
List 
<  
StateTransitionBase  3
<3 4
T4 5
,5 6
TState7 =
,= >
TTrigger? G
>G H
>H I
AutoTransitionsJ Y
=Z [
new\ _
List` d
<d e
StateTransitionBasee x
<x y
Ty z
,z {
TState	| �
,
� �
TTrigger
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
<% &
TState& ,
,, -
List. 2
<2 3
StateTransitionBase3 F
<F G
TG H
,H I
TStateJ P
,P Q
TTriggerR Z
>Z [
>[ \
>\ ](
AutoPreviousStateTransitions^ z
={ |
new	} �

Dictionary
� �
<
� �
TState
� �
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
� �
	protected 

Dictionary 
< 
TTrigger %
,% &
List' +
<+ ,
StateTransitionBase, ?
<? @
T@ A
,A B
TStateC I
,I J
TTriggerK S
>S T
>T U
>U V
TransitionsW b
=c d
newe h

Dictionaryi s
<s t
TTriggert |
,| }
List	~ �
<
� �!
StateTransitionBase
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
>
� �
>
� �
(
� �
)
� �
;
� �
public 
TState 
State 
{ 
get !
;! "
}# $
public 
Func 
< 
T 
, 
TState 
> 
StateAccessor ,
{- .
get/ 2
;2 3
}4 5
public 
Action 
< 
T 
, 
TState 
>  
StateMutator! -
{. /
get0 3
;3 4
}5 6
	protected%% "
StateConfigurationBase%% (
(%%( )
TState%%) /
state%%0 5
,%%5 6
Func%%7 ;
<%%; <
T%%< =
,%%= >
TState%%? E
>%%E F
stateAccessor%%G T
,%%T U
Action%%V \
<%%\ ]
T%%] ^
,%%^ _
TState%%` f
>%%f g
stateMutator%%h t
)%%t u
{&& 	
State'' 
='' 
state'' 
;'' 
StateAccessor(( 
=(( 
stateAccessor(( )
??((* ,
throw((- 2
new((3 6!
ArgumentNullException((7 L
(((L M
nameof((M S
(((S T
stateAccessor((T a
)((a b
)((b c
;((c d
StateMutator)) 
=)) 
stateMutator)) '
??))( *
throw))+ 0
new))1 4!
ArgumentNullException))5 J
())J K
nameof))K Q
())Q R
stateMutator))R ^
)))^ _
)))_ `
;))` a
}** 	
public00 
void00 
AddAutoTransition00 %
(00% &
StateTransitionBase00& 9
<009 :
T00: ;
,00; <
TState00= C
,00C D
TTrigger00E M
>00M N

transition00O Y
)00Y Z
{11 	
if22 
(22 
AutoTransitions22 
.22  
Any22  #
(22# $
t22$ %
=>22& (
t22) *
.22* +
Priority22+ 3
==224 6

transition227 A
.22A B
Priority22B J
)22J K
)22K L
{33 
throw33 
new33 %
InvalidOperationException33 1
(331 2
$"332 4 
Auto transition for 334 H
{33H I
State33I N
}33N O!
 state with priority 33O d
{33d e

transition33e o
.33o p
Priority33p x
}33x y
 already added.	33y �
"
33� �
)
33� �
;
33� �
}
33� �
AutoTransitions55 
.55 
Add55 
(55  

transition55  *
)55* +
;55+ ,
}66 	
public== 
void== 
AddTransition== !
(==! "
TTrigger==" *
trigger==+ 2
,==2 3
StateTransitionBase==4 G
<==G H
T==H I
,==I J
TState==K Q
,==Q R
TTrigger==S [
>==[ \

transition==] g
)==g h
{>> 	
if?? 
(?? 
!?? 
Transitions?? 
.?? 
TryGetValue?? (
(??( )
trigger??) 0
,??0 1
out??2 5
var??6 9
existingTransitions??: M
)??M N
)??N O
{@@ 
Transitions@@ 
.@@ 
Add@@ 
(@@ 
trigger@@ %
,@@% &
new@@' *
List@@+ /
<@@/ 0
StateTransitionBase@@0 C
<@@C D
T@@D E
,@@E F
TState@@G M
,@@M N
TTrigger@@O W
>@@W X
>@@X Y
{@@Z [

transition@@[ e
}@@e f
)@@f g
;@@g h
}@@i j
elseAA 
{BB 
ifCC 
(CC 
existingTransitionsCC '
.CC' (
AnyCC( +
(CC+ ,
tCC, -
=>CC. 0
tCC1 2
.CC2 3
PriorityCC3 ;
==CC< >

transitionCC? I
.CCI J
PriorityCCJ R
)CCR S
)CCS T
{DD 
throwDD 
newDD %
InvalidOperationExceptionDD 5
(DD5 6
$"DD6 8
{DD8 9
triggerDD9 @
}DD@ A.
" trigger was previously added for DDA c
{DDc d
StateDDd i
}DDi j
 state as priority DDj }
{DD} ~

transition	DD~ �
.
DD� �
Priority
DD� �
}
DD� �
.
DD� �
"
DD� �
)
DD� �
;
DD� �
}
DD� �
existingTransitionsFF #
.FF# $
AddFF$ '
(FF' (

transitionFF( 2
)FF2 3
;FF3 4
}GG 
}HH 	
	protectedJJ !
StateTransitionResultJJ '
<JJ' (
TStateJJ( .
,JJ. /
TTriggerJJ0 8
>JJ8 9
FireTriggerPrimJJ: I
(JJI J
ExecutionParametersJJJ ]
<JJ] ^
TJJ^ _
,JJ_ `
TTriggerJJa i
>JJi j

parametersJJk u
)JJu v
{KK 	!
StateTransitionResultLL !
<LL! "
TStateLL" (
,LL( )
TTriggerLL* 2
>LL2 3
resultLL4 :
=LL; <
nullLL= A
;LLA B
ifNN 
(NN 
TransitionsNN 
.NN 
TryGetValueNN '
(NN' (

parametersNN( 2
.NN2 3
TriggerNN3 :
,NN: ;
outNN< ?
varNN@ C
transitionsNND O
)NNO P
)NNP Q
{OO 
foreachPP 
(PP 
varPP 

transitionPP '
inPP( *
transitionsPP+ 6
.PP6 7
OrderByPP7 >
(PP> ?
tPP? @
=>PPA C
tPPD E
.PPE F
PriorityPPF N
)PPN O
)PPO P
{QQ 
resultRR 
=RR 

transitionRR '
.RR' (
ExecuteRR( /
(RR/ 0

parametersRR0 :
)RR: ;
;RR; <
ifSS 
(SS 
resultSS 
.SS 
WasSuccessfulSS ,
)SS, -
{TT 
returnTT 
resultTT #
;TT# $
}TT% &
}UU 
}VV 
returnXX 
resultXX 
;XX 
}YY 	
}ZZ 
}[[ ��
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
public&& 
StateMachine&& 
(&& 
Func&&  
<&&  !
T&&! "
,&&" #
TState&&$ *
>&&* +
stateAccessor&&, 9
,&&9 :
Action&&; A
<&&A B
T&&B C
,&&C D
TState&&E K
>&&K L
stateMutator&&M Y
)&&Y Z
{'' 	
StateAccessor(( 
=(( 
stateAccessor(( )
??((* ,
throw((- 2
new((3 6!
ArgumentNullException((7 L
(((L M
nameof((M S
(((S T
stateAccessor((T a
)((a b
)((b c
;((c d
StateMutator)) 
=)) 
stateMutator)) '
??))( *
throw))+ 0
new))1 4!
ArgumentNullException))5 J
())J K
nameof))K Q
())Q R
stateMutator))R ^
)))^ _
)))_ `
;))` a
}** 	
public33 
IStateMachine33 
<33 
T33 
,33 
TState33  &
,33& '
TTrigger33( 0
>330 1
AddTriggerAction332 B
(33B C
TTrigger33C K
trigger33L S
,33S T
Action33U [
<33[ \
T33\ ]
>33] ^
action33_ e
)33e f
{44 	
if55 
(55 
_triggerActions55 
.55  
ContainsKey55  +
(55+ ,
trigger55, 3
)553 4
)554 5
{66 
throw66 
new66 %
InvalidOperationException66 1
(661 2
$"662 4+
Only one action is allowed for 664 S
{66S T
trigger66T [
}66[ \
	 trigger.66\ e
"66e f
)66f g
;66g h
}66i j
_triggerActions88 
.88 
Add88 
(88  
trigger88  '
,88' ( 
TriggerActionFactory88) =
<88= >
T88> ?
,88? @
TTrigger88A I
>88I J
.88J K
GetTriggerAction88K [
(88[ \
action88\ b
)88b c
)88c d
;88d e
return:: 
this:: 
;:: 
};; 	
publicEE 
IStateMachineEE 
<EE 
TEE 
,EE 
TStateEE  &
,EE& '
TTriggerEE( 0
>EE0 1
AddTriggerActionEE2 B
<EEB C
TRequestEEC K
>EEK L
(EEL M
TTriggerEEM U
triggerEEV ]
,EE] ^
ActionFF 
<FF 
TFF 
,FF 
TRequestFF 
>FF 
actionFF  &
)FF& '
{GG 	
ifHH 
(HH 
_triggerActionsHH 
.HH  
ContainsKeyHH  +
(HH+ ,
triggerHH, 3
)HH3 4
)HH4 5
{II 
throwII 
newII %
InvalidOperationExceptionII 1
(II1 2
$"II2 4+
Only one action is allowed for II4 S
{IIS T
triggerIIT [
}II[ \
	 trigger.II\ e
"IIe f
)IIf g
;IIg h
}IIi j
_triggerActionsKK 
.KK 
AddKK 
(KK  
triggerKK  '
,KK' ( 
TriggerActionFactoryKK) =
<KK= >
TKK> ?
,KK? @
TTriggerKKA I
>KKI J
.KKJ K
GetTriggerActionKKK [
(KK[ \
actionKK\ b
)KKb c
)KKc d
;KKd e
returnMM 
thisMM 
;MM 
}NN 	
publicUU 
IStateConfigurationUU "
<UU" #
TUU# $
,UU$ %
TStateUU& ,
,UU, -
TTriggerUU. 6
>UU6 7
ConfigureStateUU8 F
(UUF G
TStateUUG M
stateUUN S
)UUS T
{VV 	
ifWW 
(WW  
_stateConfigurationsWW $
.WW$ %
TryGetValueWW% 0
(WW0 1
stateWW1 6
,WW6 7
outWW8 ;
varWW< ?
stateConfigurationWW@ R
)WWR S
)WWS T
{XX 
returnXX 
stateConfigurationXX '
;XX' (
}XX) *
varZZ 
newStateZZ 
=ZZ 
newZZ 
StateConfigurationZZ 1
<ZZ1 2
TZZ2 3
,ZZ3 4
TStateZZ5 ;
,ZZ; <
TTriggerZZ= E
>ZZE F
(ZZF G
stateZZG L
,ZZL M
StateAccessorZZN [
,ZZ[ \
StateMutatorZZ] i
)ZZi j
;ZZj k 
_stateConfigurations[[  
.[[  !
Add[[! $
([[$ %
state[[% *
,[[* +
newState[[, 4
)[[4 5
;[[5 6
return\\ 
newState\\ 
;\\ 
}]] 	
publicff !
StateTransitionResultff $
<ff$ %
TStateff% +
,ff+ ,
TTriggerff- 5
>ff5 6
FireTriggerff7 B
<ffB C
TRequestffC K
>ffK L
(ffL M
TffM N
contextffO V
,ffV W
TTriggerffX `
triggerffa h
,ffh i
TRequestffj r
requestffs z
)ffz {
wheregg 
TRequestgg 
:gg 
classgg "
{hh 	
varii 
executionParametersii #
=ii$ %
newii& )
ExecutionParametersii* =
<ii= >
Tii> ?
,ii? @
TTriggeriiA I
>iiI J
(iiJ K
triggeriiK R
,iiR S
contextiiT [
,ii[ \
requestii] d
:iid e
requestiif m
)iim n
;iin o
varjj 

startStatejj 
=jj 
StateAccessorjj *
(jj* +
contextjj+ 2
)jj2 3
;jj3 4
ifll 
(ll 
_triggerActionsll 
.ll  
TryGetValuell  +
(ll+ ,
triggerll, 3
,ll3 4
outll5 8
varll9 <
triggerActionll= J
)llJ K
)llK L
{mm 
triggerActionmm 
.mm 
Executemm #
(mm# $
executionParametersmm$ 7
)mm7 8
;mm8 9
}mm: ;
varoo 
resultoo 
=oo 
!oo  
_stateConfigurationsoo .
.oo. /
TryGetValueoo/ :
(oo: ;

startStateoo; E
,ooE F
outooG J
varooK N
stateConfigurationooO a
)ooa b
?pp 
newpp !
StateTransitionResultpp +
<pp+ ,
TStatepp, 2
,pp2 3
TTriggerpp4 <
>pp< =
(pp= >
triggerpp> E
,qq 

startStateqq  
,rr 

startStaterr  
,ss 

startStatess  
,tt 
lastTransitionNamett (
:tt( )
stringtt* 0
.tt0 1
Emptytt1 6
,uu 
transitionDefineduu '
:uu' (
falseuu) .
)uu. /
:vv 
stateConfigurationvv $
.vv$ %
FireTriggervv% 0
(vv0 1
executionParametersvv1 D
)vvD E
;vvE F
returnxx &
executeExitAndEntryActionsxx -
(xx- .
executionParametersxx. A
,xxA B
resultxxC I
)xxI J
;xxJ K
}yy 	
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
�� 
WasSuccessful
�� +
&&
��, .
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
��Z \
currentResult
��] j
.
��j k
PreviousState
��k x
.
��x y
	CompareTo��y �
(��� �
currentResult��� �
.��� �
CurrentState��� �
)��� �
==��� �
$num��� �
)��� �
)��� �
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
��H I
currentResult
�� !
=
��" #
newState
��$ ,
.
��, -#
ExecuteAutoTransition
��- B
(
��B C

parameters
��C M
,
��M N
currentResult
��O \
)
��\ ]
??
��^ `
currentResult
��a n
;
��n o
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
��V W
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
readonly 
Func 
< 
T 
,  
TState! '
>' (
_stateAccessor) 7
;7 8
private 
readonly 
Action 
<  
T  !
,! "
TState# )
>) *
_stateMutator+ 8
;8 9
private 
readonly 

Dictionary #
<# $
TState$ *
,* +,
 IStateConfigurationAsyncInternal, L
<L M
TM N
,N O
TStateP V
,V W
TTriggerX `
>` a
>a b 
_stateConfigurationsc w
=x y
newz }

Dictionary	~ �
<
� �
TState
� �
,
� �.
 IStateConfigurationAsyncInternal
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
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
<# $
TTrigger$ ,
,, -
FunctionActionBase. @
<@ A
TA B
>B C
>C D
_triggerActionsE T
=U V
newW Z

Dictionary[ e
<e f
TTriggerf n
,n o
FunctionActionBase	p �
<
� �
T
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
� �
public%% 
StateMachineAsync%%  
(%%  !
Func%%! %
<%%% &
T%%& '
,%%' (
TState%%) /
>%%/ 0
stateAccessor%%1 >
,%%> ?
Action%%@ F
<%%F G
T%%G H
,%%H I
TState%%J P
>%%P Q
stateMutator%%R ^
)%%^ _
{&& 	
_stateAccessor'' 
='' 
stateAccessor'' *
??''+ -
throw''. 3
new''4 7!
ArgumentNullException''8 M
(''M N
nameof''N T
(''T U
stateAccessor''U b
)''b c
)''c d
;''d e
_stateMutator(( 
=(( 
stateMutator(( (
??(() +
throw((, 1
new((2 5!
ArgumentNullException((6 K
(((K L
nameof((L R
(((R S
stateMutator((S _
)((_ `
)((` a
;((a b
})) 	
public22 
IStateMachineAsync22 !
<22! "
T22" #
,22# $
TState22% +
,22+ ,
TTrigger22- 5
>225 6
AddTriggerAction227 G
(22G H
TTrigger22H P
trigger22Q X
,22X Y
Func22Z ^
<22^ _
T22_ `
,22` a
CancellationToken22b s
,22s t
Task22u y
>22y z
action	22{ �
)
22� �
{33 	
if44 
(44 
_triggerActions44 
.44  
ContainsKey44  +
(44+ ,
trigger44, 3
)443 4
)444 5
{55 
throw55 
new55 %
InvalidOperationException55 1
(551 2
$"552 4+
Only one action is allowed for 554 S
{55S T
trigger55T [
}55[ \
	 trigger.55\ e
"55e f
)55f g
;55g h
}55i j
_triggerActions77 
.77 
Add77 
(77  
trigger77  '
,77' ( 
TriggerActionFactory77) =
<77= >
T77> ?
,77? @
TTrigger77A I
>77I J
.77J K
GetTriggerAction77K [
(77[ \
action77\ b
)77b c
)77c d
;77d e
return99 
this99 
;99 
}:: 	
publicDD 
IStateMachineAsyncDD !
<DD! "
TDD" #
,DD# $
TStateDD% +
,DD+ ,
TTriggerDD- 5
>DD5 6
AddTriggerActionDD7 G
<DDG H
TRequestDDH P
>DDP Q
(DDQ R
TTriggerDDR Z
triggerDD[ b
,DDb c
FuncDDd h
<DDh i
TDDi j
,DDj k
TRequestDDl t
,DDt u
CancellationToken	DDv �
,
DD� �
Task
DD� �
>
DD� �
action
DD� �
)
DD� �
{EE 	
ifFF 
(FF 
_triggerActionsFF 
.FF  
ContainsKeyFF  +
(FF+ ,
triggerFF, 3
)FF3 4
)FF4 5
{GG 
throwGG 
newGG %
InvalidOperationExceptionGG 1
(GG1 2
$"GG2 4+
Only one action is allowed for GG4 S
{GGS T
triggerGGT [
}GG[ \
	 trigger.GG\ e
"GGe f
)GGf g
;GGg h
}GGi j
_triggerActionsII 
.II 
AddII 
(II  
triggerII  '
,II' ( 
TriggerActionFactoryII) =
<II= >
TII> ?
,II? @
TTriggerIIA I
>III J
.IIJ K
GetTriggerActionIIK [
(II[ \
actionII\ b
)IIb c
)IIc d
;IId e
returnKK 
thisKK 
;KK 
}LL 	
publicSS $
IStateConfigurationAsyncSS '
<SS' (
TSS( )
,SS) *
TStateSS+ 1
,SS1 2
TTriggerSS3 ;
>SS; <
ConfigureStateSS= K
(SSK L
TStateSSL R
stateSSS X
)SSX Y
{TT 	
ifUU 
(UU  
_stateConfigurationsUU $
.UU$ %
TryGetValueUU% 0
(UU0 1
stateUU1 6
,UU6 7
outUU8 ;
varUU< ?
stateConfigurationUU@ R
)UUR S
)UUS T
{VV 
returnVV 
stateConfigurationVV '
;VV' (
}VV) *
varXX 
newStateXX 
=XX 
newXX #
StateConfigurationAsyncXX 6
<XX6 7
TXX7 8
,XX8 9
TStateXX9 ?
,XX? @
TTriggerXXA I
>XXI J
(XXJ K
stateXXK P
,XXP Q
_stateAccessorXXR `
,XX` a
_stateMutatorXXb o
)XXo p
;XXp q 
_stateConfigurationsYY  
.YY  !
AddYY! $
(YY$ %
stateYY% *
,YY* +
newStateYY, 4
)YY4 5
;YY5 6
return[[ 
newState[[ 
;[[ 
}\\ 	
publicee 
asyncee 
Taskee 
<ee !
StateTransitionResultee /
<ee/ 0
TStateee0 6
,ee6 7
TTriggeree8 @
>ee@ A
>eeA B
FireTriggerAsynceeC S
(eeS T
TeeT U
contexteeV ]
,ee] ^
TTriggeree_ g
triggereeh o
,eeo p
CancellationToken	eeq �
cancellationToken
ee� �
=
ee� �
default
ee� �
(
ee� �
CancellationToken
ee� �
)
ee� �
)
ee� �
{ff 	
vargg 

startStategg 
=gg 
_stateAccessorgg +
(gg+ ,
contextgg, 3
)gg3 4
;gg4 5
ifii 
(ii 
_triggerActionsii 
.ii  
TryGetValueii  +
(ii+ ,
triggerii, 3
,ii3 4
outii5 8
varii9 <
triggerActionii= J
)iiJ K
)iiK L
{jj 
awaitkk 
triggerActionkk #
.kk# $
ExecuteAsynckk$ 0
(kk0 1
contextkk1 8
,kk8 9
requestkk: A
:kkA B
nullkkC G
,kkG H
cancellationTokenkkI Z
:kkZ [
cancellationTokenkk\ m
)kkm n
.ll 
ConfigureAwaitll "
(ll" #%
continueOnCapturedContextll# <
:ll< =
falsell> C
)llC D
;llD E
}mm 
varoo 
executionParametersoo #
=oo$ %
newoo& )
ExecutionParametersoo* =
<oo= >
Too> ?
,oo? @
TTriggerooA I
>ooI J
(ooJ K
triggerooK R
,ooR S
contextooT [
,oo[ \
cancellationTokenoo] n
)oon o
;ooo p
varqq 
resultqq 
=qq  
_stateConfigurationsqq -
.qq- .
TryGetValueqq. 9
(qq9 :

startStateqq: D
,qqD E
outqqF I
varqqJ M
stateConfigurationqqN `
)qq` a
?rr 
awaitrr 
stateConfigurationrr *
.rr* +
FireTriggerAsyncrr+ ;
(rr; <
executionParametersrr< O
)rrO P
.rrP Q
ConfigureAwaitrrQ _
(rr_ `%
continueOnCapturedContextrr` y
:rry z
false	rr{ �
)
rr� �
:ss 
newss !
StateTransitionResultss +
<ss+ ,
TStatess, 2
,ss2 3
TTriggerss4 <
>ss< =
(ss= >
triggerss> E
,tt 

startStatett  
,uu 

startStateuu  
,vv 

startStatevv  
,ww 
lastTransitionNameww (
:ww( )
stringww* 0
.ww0 1
Emptyww1 6
,xx 
transitionDefinedxx '
:xx' (
falsexx) .
)xx. /
;xx/ 0
returnzz 
awaitzz +
executeExitAndEntryActionsAsynczz 8
(zz8 9
executionParameterszz9 L
,zzL M
resultzzN T
)zzT U
.zzU V
ConfigureAwaitzzV d
(zzd e%
continueOnCapturedContextzze ~
:zz~ 
false
zz� �
)
zz� �
;
zz� �
}{{ 	
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
�� 
_stateAccessor
�� +
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
�� 
triggerAction
�� #
.
��# $
ExecuteAsync
��$ 0
(
��0 1
context
��1 8
,
��8 9
cancellationToken
��: K
,
��K L
request
��M T
)
��T U
.
�� 
ConfigureAwait
�� #
(
��# $'
continueOnCapturedContext
��$ =
:
��= >
false
��? D
)
��D E
;
��E F
}
�� 
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
�� 
ConfigureAwait
�� #
(
��# $'
continueOnCapturedContext
��$ =
:
��= >
false
��? D
)
��D E
;
��E F
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
�� 
ConfigureAwait
�� 
(
��  '
continueOnCapturedContext
��  9
:
��9 :
false
��; @
)
��@ A
;
��A B
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
�� 
_stateAccessor
�� -
(
��- .

parameters
��. 8
.
��8 9
Context
��9 @
)
��@ A
;
��A B
if
�� 
(
�� 
currentResult
�� 
.
�� 
WasSuccessful
�� +
&&
��, .
!
��/ 0
currentState
��0 <
.
��< =
Equals
��= C
(
��C D
currentResult
��D Q
.
��Q R
StartingState
��R _
)
��_ `
)
��` a
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
��H I
currentResult
�� !
=
��" #
await
��$ )
newState
��* 2
.
��2 3(
ExecuteAutoTransitionAsync
��3 M
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
�� 
currentResult
�� %
=
��& '
await
��( --
executeExitAndEntryActionsAsync
��. M
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
�� 
_stateAccessor
�� ,
(
��, -
context
��- 4
)
��4 5
;
��5 6
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
��5 6)
RegisterOnTransitionedEvent
��7 R
(
��R S
Action
��S Y
<
��Y Z
T
��Z [
,
��[ \#
StateTransitionResult
��] r
<
��r s
TState
��s y
,
��y z
TTrigger��{ �
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
�� 
this
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
:8 9
StateTransitionBase: M
<M N
TN O
,O P
TStateQ W
,W X
TTriggerY a
>a b
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
} �*
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
:= >
StateTransitionBase? R
<R S
TS T
,T U
TStateV \
,\ ]
TTrigger^ f
>f g
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
return!! 
	GetResult!! 
(!! 

parameters!! )
,!!) *
currentResult!!+ 8
,!!8 9

startState!!: D
,!!D E
wasSuccessful!!F S
:!!S T
false!!U Z
,!!Z [
wasCancelled!!\ h
:!!h i
true!!j n
)!!n o
;!!o p
}!!q r
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
return%% 
	GetResult%% 
(%% 

parameters%% )
,%%) *
currentResult%%+ 8
,%%8 9

startState%%: D
,%%D E
wasSuccessful%%F S
:%%S T
false%%U Z
,%%Z [
wasCancelled%%\ h
:%%h i

parameters%%j t
.%%t u
CancellationToken	%%u �
.
%%� �%
IsCancellationRequested
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
=((! "
	GetResult((# ,
(((, -

parameters((- 7
,((7 8
currentResult((9 F
,((F G

startState((H R
,((R S
wasSuccessful((T a
:((a b
true((c g
,((g h
wasCancelled((i u
:((u v
false((w |
)((| }
;((} ~
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
}.. �L
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
}8 9
public 
TState 
ToState 
{ 
get  #
;# $
	protected% .
set/ 2
;2 3
}4 5
	protected 
StateTransitionBase %
(% &
Func& *
<* +
T+ ,
,, -
TState. 4
>4 5
stateAccessor6 C
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
TState 
toState 
, 
string 
name 
, 
uint 
priority 
) 
{   	
StateAccessor!! 
=!! 
stateAccessor!! )
??!!* ,
throw!!- 2
new!!3 6!
ArgumentNullException!!7 L
(!!L M
nameof!!M S
(!!S T
stateAccessor!!T a
)!!a b
)!!b c
;!!c d
StateMutator"" 
="" 
stateMutator"" '
??""( *
throw""+ 0
new""1 4!
ArgumentNullException""5 J
(""J K
nameof""K Q
(""Q R
stateMutator""R ^
)""^ _
)""_ `
;""` a
ToState## 
=## 
toState## 
;## 
Name$$ 
=$$ 
name$$ 
??$$ 
$str$$ &
;$$& '
Priority%% 
=%% 
priority%% 
;%%  
}&& 	
public(( 
virtual(( !
StateTransitionResult(( ,
<((, -
TState((- 3
,((3 4
TTrigger((5 =
>((= >
Execute((? F
(((F G
ExecutionParameters((G Z
<((Z [
T(([ \
,((\ ]
TTrigger((^ f
>((f g

parameters((h r
,))
 !
StateTransitionResult)) !
<))! "
TState))" (
,))( )
TTrigger))* 2
>))2 3
currentResult))4 A
=))B C
null))D H
)))H I
{** 	
throw++ 
new++ #
NotImplementedException++ -
(++- .
$str	++. �
)
++� �
;
++� �
},, 	
public.. 
virtual.. 
Task.. 
<.. !
StateTransitionResult.. 1
<..1 2
TState..2 8
,..8 9
TTrigger..: B
>..B C
>..C D
ExecuteAsync..E Q
(..Q R
ExecutionParameters..R e
<..e f
T..f g
,..g h
TTrigger..i q
>..q r

parameters..s }
,//
 !
StateTransitionResult// !
<//! "
TState//" (
,//( )
TTrigger//* 2
>//2 3
currentResult//4 A
=//B C
null//D H
)//H I
{00 	
throw11 
new11 #
NotImplementedException11 -
(11- .
$str	11. �
)
11� �
;
11� �
}22 	
	protected44 !
StateTransitionResult44 '
<44' (
TState44( .
,44. /
TTrigger440 8
>448 9
ExecutePrim44: E
(44E F
ExecutionParameters44F Y
<44Y Z
T44Z [
,44[ \
TTrigger44] e
>44e f

parameters44g q
,55
 !
StateTransitionResult55 !
<55! "
TState55" (
,55( )
TTrigger55* 2
>552 3
currentResult554 A
,55A B
bool55C G
conditionMet55H T
)55T U
{66 	
var77 

startState77 
=77 
currentResult77 *
!=77+ -
null77. 2
?773 4
currentResult775 B
.77B C
StartingState77C P
:77Q R
StateAccessor77S `
(77` a

parameters77a k
.77k l
Context77l s
)77s t
;77t u
if99 
(99 
!99 
conditionMet99 
)99 
{:: 
return:: 
	GetResult:: 
(:: 

parameters:: )
,::) *
currentResult::+ 8
,::8 9

startState::: D
,::D E
wasSuccessful::F S
:::S T
false::U Z
,::Z [
wasCancelled::\ h
:::h i
false::j o
)::o p
;::p q
}::r s
StateMutator<< 
(<< 

parameters<< #
.<<# $
Context<<$ +
,<<+ ,
ToState<<- 4
)<<4 5
;<<5 6
var== 
transitionResult==  
===! "
	GetResult==# ,
(==, -

parameters==- 7
,==7 8
currentResult==9 F
,==F G

startState==H R
,==R S
wasSuccessful==T a
:==a b
true==c g
,==g h
wasCancelled==i u
:==u v
false==w |
)==| }
;==} ~
NotifyOfTransition>> 
(>> 

parameters>> )
.>>) *
Context>>* 1
,>>1 2
transitionResult>>3 C
)>>C D
;>>D E
return@@ 
transitionResult@@ #
;@@# $
}AA 	
	protectedCC !
StateTransitionResultCC '
<CC' (
TStateCC( .
,CC. /
TTriggerCC0 8
>CC8 9
	GetResultCC: C
(CCC D
ExecutionParametersCCD W
<CCW X
TCCX Y
,CCY Z
TTriggerCC[ c
>CCc d

parametersCCe o
,DD !
StateTransitionResultDD #
<DD# $
TStateDD$ *
,DD* +
TTriggerDD, 4
>DD4 5
currentResultDD6 C
,EE 
TStateEE 

startStateEE 
,FF 
boolFF 
wasSuccessfulFF  
,GG 
boolGG 
wasCancelledGG 
)GG  
{HH 	
returnII 
newII !
StateTransitionResultII ,
<II, -
TStateII- 3
,II3 4
TTriggerII5 =
>II= >
(II> ?

parametersII? I
.III J
TriggerIIJ Q
,JJ 

startStateJJ 
,KK 
(KK 
!KK 
wasSuccessfulKK 
||KK  "
currentResultKK# 0
==KK1 3
nullKK4 8
)KK8 9
?KK: ;

startStateKK< F
:KKG H
currentResultKKI V
.KKV W
CurrentStateKKW c
,LL 
wasSuccessfulLL 
?LL 
StateAccessorLL  -
(LL- .

parametersLL. 8
.LL8 9
ContextLL9 @
)LL@ A
:LLB C
currentResultLLD Q
==LLR T
nullLLU Y
?LLZ [

startStateLL\ f
:LLg h
currentResultLLi v
.LLv w
PreviousState	LLw �
,MM 
wasSuccessfulMM 
?MM 
NameMM  $
:MM& '
currentResultMM( 5
==MM6 8
nullMM9 =
?MM> ?
stringMM@ F
.MMF G
EmptyMMG L
:MMM N
currentResultMMO \
.MM\ ]
LastTransitionNameMM] o
,NN 
wasCancelledNN 
:NN 
wasCancelledNN *
,OO 
conditionMetOO 
:OO 
wasSuccessfulOO +
||OO, .
(OO/ 0
currentResultOO0 =
!=OO> @
nullOOA E
&&OOF H
currentResultOOI V
.OOV W
ConditionMetOOW c
)OOc d
)OOd e
;OOe f
}PP 	
	protectedRR 
stringRR #
GetTransitionNameIfTrueRR 0
(RR0 1
boolRR1 5
isTrueRR6 <
)RR< =
{SS 	
returnTT 
isTrueTT 
?TT 
NameTT  
:TT! "
stringTT# )
.TT) *
EmptyTT* /
;TT/ 0
}UU 	
	protectedWW 
voidWW 
NotifyOfTransitionWW )
(WW) *
TWW* +
contextWW, 3
,WW3 4!
StateTransitionResultWW5 J
<WWJ K
TStateWWK Q
,WWQ R
TTriggerWWS [
>WW[ \
transitionResultWW] m
)WWm n
{XX 	
OnTransitionedEventYY 
?YY  
.YY  !
InvokeYY! '
(YY' (
contextYY( /
,YY/ 0
transitionResultYY1 A
)YYA B
;YYB C
}ZZ 	
}[[ 
}\\ �#
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
, 
TState 
	fromState 
, 
Func 
< 
T 
, 
TState 
> 
	stateFunc '
, 
string 
name 
, 
uint 
priority 
) 
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
	StateFunc 
= 
	stateFunc !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
	stateFuncL U
)U V
)V W
;W X
} 	
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,s t"
StateTransitionResult	u �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
=
� �
null
� �
)
� �
{   	
var!! 

startState!! 
=!! 
currentResult!! *
!=!!+ -
null!!. 2
?!!3 4
currentResult!!5 B
.!!B C
StartingState!!C P
:!!Q R
StateAccessor!!S `
(!!` a

parameters!!a k
.!!k l
Context!!l s
)!!s t
;!!t u
var"" 
toState"" 
="" 
	StateFunc"" #
.""# $
Invoke""$ *
(""* +

parameters""+ 5
.""5 6
Context""6 =
)""= >
;""> ?
if$$ 
($$ 
toState$$ 
.$$ 
	CompareTo$$ !
($$! "

startState$$" ,
)$$, -
==$$. 0
$num$$1 2
)$$2 3
{%% 
return%% 
	GetResult%% 
(%% 

parameters%% )
,%%) *
currentResult%%+ 8
,%%8 9

startState%%: D
,%%D E
wasSuccessful%%F S
:%%S T
false%%U Z
,%%Z [
wasCancelled%%\ h
:%%h i
false%%j o
)%%o p
;%%p q
}%%r s
StateMutator'' 
.'' 
Invoke'' 
(''  

parameters''  *
.''* +
Context''+ 2
,''2 3
toState''4 ;
)''; <
;''< =
var(( 
transitionResult((  
=((! "
	GetResult((# ,
(((, -

parameters((- 7
,((7 8
currentResult((9 F
,((F G

startState((H R
,((R S
wasSuccessful((T a
:((a b
true((c g
,((g h
wasCancelled((i u
:((u v
false((w |
)((| }
;((} ~
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
}.. �#
]C:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionDynamicAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class '
StateTransitionDynamicAsync .
<. /
T/ 0
,0 1
TState2 8
,8 9
TTrigger: B
>B C
:D E&
StateTransitionDynamicBaseF `
<` a
Ta b
,b c
TStated j
,j k
TTriggerl t
>t u
where 
TState 
: 
IComparable "
{ 
public 
Func 
< 
T 
, 
CancellationToken (
,( )
Task* .
<. /
TState/ 5
>5 6
>6 7
StateFunctionAsync8 J
{K L
getM P
;P Q
}R S
public '
StateTransitionDynamicAsync *
(* +
Func+ /
</ 0
T0 1
,1 2
TState3 9
>9 :
stateAccessor; H
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
TState 
	fromState 
, 
Func 
< 
T 
, 
CancellationToken '
,' (
Task) -
<- .
TState. 4
>4 5
>5 6
stateFuncAsync7 E
, 
string 
name 
, 
uint 
priority 
) 
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
StateFunctionAsync 
=  
stateFuncAsync! /
??0 2
throw3 8
new9 <!
ArgumentNullException= R
(R S
nameofS Y
(Y Z
stateFuncAsyncZ h
)h i
)i j
;j k
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
{## 	
var$$ 

startState$$ 
=$$ 
currentResult$$ *
!=$$+ -
null$$. 2
?$$3 4
currentResult$$5 B
.$$B C
StartingState$$C P
:$$Q R
StateAccessor$$S `
($$` a

parameters$$a k
.$$k l
Context$$l s
)$$s t
;$$t u
if&& 
(&& 

parameters&& 
.&& 
CancellationToken&& ,
.&&, -#
IsCancellationRequested&&- D
)&&D E
{'' 
return'' 
	GetResult'' 
('' 

parameters'' )
,'') *
currentResult''+ 8
,''8 9

startState'': D
,''D E
wasSuccessful''F S
:''S T
false''U Z
,''Z [
wasCancelled''\ h
:''h i
true''j n
)''n o
;''o p
}''q r
var)) 
toState)) 
=)) 
await)) 
StateFunctionAsync))  2
())2 3

parameters))3 =
.))= >
Context))> E
,))E F

parameters))G Q
.))Q R
CancellationToken))R c
)))c d
.** 
ConfigureAwait** 
(**  %
continueOnCapturedContext**  9
:**9 :
false**; @
)**@ A
;**A B
return,,  
ExecuteFinalizeAsync,, '
(,,' (

parameters,,( 2
,,,2 3
currentResult,,4 A
,,,A B

startState,,C M
,,,M N
toState,,O V
),,V W
;,,W X
}-- 	
}.. 
}// �
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
TStatel r
	fromStates |
,| }
string	~ �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
}	 

	protected !
StateTransitionResult '
<' (
TState( .
,. /
TTrigger0 8
>8 9 
ExecuteFinalizeAsync: N
(N O
ExecutionParametersO b
<b c
Tc d
,d e
TTriggerf n
>n o

parametersp z
, !
StateTransitionResult #
<# $
TState$ *
,* +
TTrigger, 4
>4 5
currentResult6 C
,C D
TStateE K

startStateL V
,V W
TStateX ^
toState_ f
)f g
{ 	
var 
wasSuccessful 
= 
false  %
;% &
if 
( 
toState 
. 
	CompareTo !
(! "

startState" ,
), -
!=. 0
$num1 2
)2 3
{ 
StateMutator 
( 

parameters '
.' (
Context( /
,/ 0
toState1 8
)8 9
;9 :
wasSuccessful 
= 
true  $
;$ %
} 
var   
transitionResult    
=  ! "
	GetResult  # ,
(  , -

parameters  - 7
,!! 
currentResult!! 
,"" 

startState"" 
,## 
wasSuccessful## 
,$$ 

parameters$$ 
.$$ 
CancellationToken$$ ,
.$$, -#
IsCancellationRequested$$- D
)$$D E
;$$E F
if&& 
(&& 
wasSuccessful&& 
)&& 
{'' 
NotifyOfTransition''  
(''  !

parameters''! +
.''+ ,
Context'', 3
,''3 4
transitionResult''5 E
)''E F
;''F G
}''H I
return)) 
transitionResult)) #
;))# $
}** 	
}++ 
},, �+
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
,p q
TStater x
	fromState	y �
,
� �
Func
� �
<
� �
T
� �
,
� �
TParam
� �
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
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
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
=## 
toState## &
.##& '
	CompareTo##' 0
(##0 1

startState##1 ;
)##; <
!=##= ?
$num##@ A
;##A B
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
=((! "
	GetResult((# ,
(((, -

parameters((- 7
,((7 8
currentResult((9 F
,((F G

startState((H R
,((R S
transitioned((T `
,((` a
wasCancelled((b n
:((n o
false((p u
)((u v
;((v w
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
}// �/
jC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionDynamicParameterizedAsync.cs
	namespace 	
NStateManager
 
{ 
internal 
class 4
(StateTransitionDynamicParameterizedAsync ;
<; <
T< =
,= >
TState? E
,E F
TTriggerG O
,O P
TParamQ W
>W X
:Y Z&
StateTransitionDynamicBase[ u
<u v
Tv w
,w x
TStatey 
,	 �
TTrigger
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
{ 
public 
Func 
< 
T 
, 
TParam 
, 
CancellationToken 0
,0 1
Task2 6
<6 7
TState7 =
>= >
>> ?
StateFuncAsync@ N
{O P
getQ T
;T U
}V W
public 4
(StateTransitionDynamicParameterizedAsync 7
(7 8
Func8 <
<< =
T= >
,> ?
TState@ F
>F G
stateAccessorH U
, 
Action 
< 
T 
, 
TState 
> 
stateMutator  ,
, 
TState 
	fromState 
, 
Func 
< 
T 
, 
TParam 
, 
CancellationToken /
,/ 0
Task1 5
<5 6
TState6 <
>< =
>= >
stateFuncAsync? M
, 
string 
name 
, 
uint 
priority 
) 
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
StateFuncAsync 
= 
stateFuncAsync +
??, .
throw/ 4
new5 8!
ArgumentNullException9 N
(N O
nameofO U
(U V
stateFuncAsyncV d
)d e
)e f
;f g
}   	
public"" 
override"" 
async"" 
Task"" "
<""" #!
StateTransitionResult""# 8
<""8 9
TState""9 ?
,""? @
TTrigger""A I
>""I J
>""J K
ExecuteAsync""L X
(""X Y
ExecutionParameters""Y l
<""l m
T""m n
,""n o
TTrigger""p x
>""x y

parameters	""z �
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
TParam%%( .
typeSafeParam%%/ <
)%%< =
)%%= >
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
&&� �
var(( 

startState(( 
=(( 
currentResult(( *
!=((+ -
null((. 2
?((3 4
currentResult((5 B
.((B C
StartingState((C P
:((Q R
StateAccessor((S `
(((` a

parameters((a k
.((k l
Context((l s
)((s t
;((t u
if** 
(** 

parameters** 
.** 
CancellationToken** ,
.**, -#
IsCancellationRequested**- D
)**D E
{++ 
if,, 
(,, 
currentResult,, !
!=,," $
null,,% )
),,) *
{-- 
return-- 
currentResult-- &
;--& '
}--( )
return// 
new// !
StateTransitionResult// 0
<//0 1
TState//1 7
,//7 8
TTrigger//9 A
>//A B
(//B C

parameters//C M
.//M N
Trigger//N U
,00 

startState00  
,11 

startState11  
,22 

startState22  
,33 
lastTransitionName33 (
:33( )
string33* 0
.330 1
Empty331 6
,44 
wasCancelled44 "
:44" #
true44$ (
)44( )
;44) *
}55 
var77 
toState77 
=77 
await77 
StateFuncAsync77  .
(77. /

parameters77/ 9
.779 :
Context77: A
,77A B
typeSafeParam77C P
,77P Q

parameters77R \
.77\ ]
CancellationToken77] n
)77n o
.88 
ConfigureAwait88 
(88 %
continueOnCapturedContext88 8
:888 9
false88: ?
)88? @
;88@ A
return::  
ExecuteFinalizeAsync:: '
(::' (

parameters::( 2
,::2 3
currentResult::4 A
,::A B

startState::C M
,::M N
toState::O V
)::V W
;::W X
};; 	
}<< 
}== �f
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
(Q R
FuncR V
<V W
TW X
,X Y
TStateZ `
>` a
stateAccessorb o
,o p
Actionq w
<w x
Tx y
,y z
TState	{ �
>
� �
stateMutator
� �
,
� �
TState
� �
	fromState
� �
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
(; <
stateAccessor< I
,I J
stateMutatorK W
,W X
toStateY `
,` a
	conditionb k
,k l
namem q
,q r
prioritys {
){ |
;| }
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
<Q R
TRequestR Z
>Z [
([ \
Func\ `
<` a
Ta b
,b c
TStated j
>j k
stateAccessorl y
,y z
Action	{ �
<
� �
T
� �
,
� �
TState
� �
>
� �
stateMutator
� �
,
� �
TState
� �
	fromState
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
� �
TRequest
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
� �
where 
TRequest 
: 
class "
{ 	
return 
new (
StateTransitionParameterized 3
<3 4
T4 5
,5 6
TState7 =
,= >
TTrigger? G
,G H
TRequestI Q
>Q R
(R S
stateAccessorS `
,` a
stateMutatorb n
,n o
toStatep w
,w x
	condition	y �
,
� �
name
� �
,
� �
priority
� �
)
� �
;
� �
} 	
public 
static 
StateTransitionBase )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
GetStateTransition? Q
(Q R
FuncR V
<V W
TW X
,X Y
TStateZ `
>` a
stateAccessorb o
,o p
Actionq w
<w x
Tx y
,y z
TState	{ �
>
� �
stateMutator
� �
,
� �
TState
� �
	fromState
� �
,
� �
TState
� �
toState
� �
,
� �
Func
� �
<
� �
T
� �
,
� �
CancellationToken
� �
,
� �
Task
� �
<
� �
bool
� �
>
� �
>
� �
conditionAsync
� �
,
� �
string
� �
name
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
{   	
return!! 
new!!  
StateTransitionAsync!! +
<!!+ ,
T!!, -
,!!- .
TState!!/ 5
,!!5 6
TTrigger!!7 ?
>!!? @
(!!@ A
stateAccessor!!A N
,!!N O
stateMutator!!P \
,!!\ ]
toState!!^ e
,!!e f
conditionAsync!!g u
,!!u v
name!!w {
,!!{ |
priority	!!} �
)
!!� �
;
!!� �
}"" 	
public$$ 
static$$ 
StateTransitionBase$$ )
<$$) *
T$$* +
,$$+ ,
TState$$- 3
,$$3 4
TTrigger$$5 =
>$$= >
GetStateTransition$$? Q
($$Q R
Func$$R V
<$$V W
T$$W X
,$$X Y
TState$$Z `
>$$` a
stateAccessor$$b o
,$$o p
Action$$q w
<$$w x
T$$x y
,$$y z
TState	$${ �
>
$$� �
stateMutator
$$� �
,
$$� �
TState
$$� �
	fromState
$$� �
,
$$� �
Func
$$� �
<
$$� �
T
$$� �
,
$$� �
TState
$$� �
>
$$� �
	stateFunc
$$� �
,
$$� �
string
$$� �
name
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
$$� �
{%% 	
return&& 
new&& "
StateTransitionDynamic&& -
<&&- .
T&&. /
,&&/ 0
TState&&1 7
,&&7 8
TTrigger&&9 A
>&&A B
(&&B C
stateAccessor&&C P
,&&P Q
stateMutator&&R ^
,&&^ _
	fromState&&` i
,&&i j
	stateFunc&&k t
,&&t u
name&&v z
,&&z {
priority	&&| �
)
&&� �
;
&&� �
}'' 	
public)) 
static)) 
StateTransitionBase)) )
<))) *
T))* +
,))+ ,
TState))- 3
,))3 4
TTrigger))5 =
>))= >
GetStateTransition))? Q
())Q R
Func))R V
<))V W
T))W X
,))X Y
TState))Z `
>))` a
stateAccessor))b o
,))o p
Action))q w
<))w x
T))x y
,))y z
TState	)){ �
>
))� �
stateMutator
))� �
,
))� �
TState
))� �
	fromState
))� �
,
))� �
Func
))� �
<
))� �
T
))� �
,
))� �
CancellationToken
))� �
,
))� �
Task
))� �
<
))� �
TState
))� �
>
))� �
>
))� �
stateFuncAsync
))� �
,
))� �
string
))� �
name
))� �
,
))� �
uint
))� �
priority
))� �
=
))� �
$num
))� �
)
))� �
{** 	
return++ 
new++ '
StateTransitionDynamicAsync++ 2
<++2 3
T++3 4
,++4 5
TState++6 <
,++< =
TTrigger++> F
>++F G
(++G H
stateAccessor++H U
,++U V
stateMutator++W c
,++c d
	fromState++e n
,++n o
stateFuncAsync++p ~
,++~ 
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
<..Q R
TParam..R X
>..X Y
(..Y Z
Func..Z ^
<..^ _
T.._ `
,..` a
TState..b h
>..h i
stateAccessor..j w
,..w x
Action..y 
<	.. �
T
..� �
,
..� �
TState
..� �
>
..� �
stateMutator
..� �
,
..� �
TState
..� �
	fromState
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
..� �
TParam
..� �
,
..� �
TState
..� �
>
..� �
	stateFunc
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
where// 
TParam// 
:// 
class//  
{00 	
return11 
new11 /
#StateTransitionDynamicParameterized11 :
<11: ;
T11; <
,11< =
TState11> D
,11D E
TTrigger11F N
,11N O
TParam11P V
>11V W
(11W X
stateAccessor11X e
,11e f
stateMutator11g s
,11s t
	fromState11u ~
,11~ 
	stateFunc
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
<44Q R
TParam44R X
>44X Y
(44Y Z
Func44Z ^
<44^ _
T44_ `
,44` a
TState44b h
>44h i
stateAccessor44j w
,44w x
Action44y 
<	44 �
T
44� �
,
44� �
TState
44� �
>
44� �
stateMutator
44� �
,
44� �
TState
44� �
	fromState
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
44� �
TParam
44� �
,
44� �
CancellationToken
44� �
,
44� �
Task
44� �
<
44� �
TState
44� �
>
44� �
>
44� �
stateFuncAsync
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
where55 
TParam55 
:55 
class55 
{66 	
return77 
new77 4
(StateTransitionDynamicParameterizedAsync77 ?
<77? @
T77@ A
,77A B
TState77C I
,77I J
TTrigger77K S
,77S T
TParam77U [
>77[ \
(77\ ]
stateAccessor77] j
,77j k
stateMutator77l x
,77x y
	fromState	77z �
,
77� �
stateFuncAsync
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
<::Q R
TParam::R X
>::X Y
(::Y Z
Func::Z ^
<::^ _
T::_ `
,::` a
TState::b h
>::h i
stateAccessor::j w
,::w x
Action::y 
<	:: �
T
::� �
,
::� �
TState
::� �
>
::� �
stateMutator
::� �
,
::� �
TState
::� �
	fromState
::� �
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
::� �
TParam
::� �
,
::� �
CancellationToken
::� �
,
::� �
Task
::� �
<
::� �
bool
::� �
>
::� �
>
::� �
conditionAsync
::� �
,
::� �
string
::� �
name
::� �
,
::� �
uint
::� �
priority
::� �
=
::� �
$num
::� �
)
::� �
where;; 
TParam;; 
:;; 
class;; 
{<< 	
return== 
new== -
!StateTransitionParameterizedAsync== 8
<==8 9
T==9 :
,==: ;
TState==< B
,==B C
TTrigger==D L
,==L M
TParam==N T
>==T U
(==U V
stateAccessor==V c
,==c d
stateMutator==e q
,==q r
toState==s z
,==z {
conditionAsync	==| �
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
}>> 	
}?? 
}@@ �
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
:M N
StateTransitionBaseO b
<b c
Tc d
,d e
TStatef l
,l m
TTriggern v
>v w
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
}!! �>
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
:R S
StateTransitionBaseT g
<g h
Th i
,i j
TStatek q
,q r
TTriggers {
>{ |
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
return%% 
	GetResult%% 
(%% 

parameters%% )
,%%) *
currentResult%%+ 8
,%%8 9

startState%%: D
,%%D E
wasSuccessful%%F S
:%%S T
false%%U Z
,%%Z [
wasCancelled%%\ h
:%%h i
true%%j n
)%%n o
;%%o p
}%%q r
if'' 
('' 
!'' 
await'' 
ConditionAsync'' %
(''% &

parameters''& 0
.''0 1
Context''1 8
,''8 9
typeSafeParam'': G
,''G H

parameters''I S
.''S T
CancellationToken''T e
)''e f
.(( 
ConfigureAwait(( 
((( %
continueOnCapturedContext(( 8
:((8 9
false((: ?
)((? @
)((@ A
{)) 
return** 
new** !
StateTransitionResult** 0
<**0 1
TState**1 7
,**7 8
TTrigger**9 A
>**A B
(**B C

parameters**C M
.**M N
Trigger**N U
,++ 

startState++  
,,, 
currentResult,, #
==,,$ &
null,,' +
?,,, -

startState,,. 8
:,,9 :
currentResult,,; H
.,,H I
PreviousState,,I V
,-- 
currentResult-- #
==--$ &
null--' +
?--, -

startState--. 8
:--9 :
currentResult--; H
.--H I
CurrentState--I U
,.. 
lastTransitionName.. (
:..( )
currentResult..* 7
==..8 :
null..; ?
?..@ A
string..B H
...H I
Empty..I N
:..O P
currentResult..Q ^
...^ _
LastTransitionName.._ q
,// 
conditionMet// "
://" #
currentResult//$ 1
!=//2 4
null//5 9
,00 
wasCancelled00 "
:00" #

parameters00$ .
.00. /
CancellationToken00/ @
.00@ A#
IsCancellationRequested00A X
)00X Y
;00Y Z
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
;"". /
}""0 1
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
boolAA 
WasSuccessfulAA !
{AA" #
getAA$ '
;AA' (
}AA) *
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
;[[3 4
WasSuccessful\\ 
=\\ 
transitionDefined\\ -
&&\\. 0
conditionMet\\1 =
&&\\> @
!\\A B
wasCancelled\\B N
;\\N O
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
}bb �
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