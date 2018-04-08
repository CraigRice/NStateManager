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
$str++ $
)++$ %
]++% &
[,, 
assembly,, 	
:,,	 

AssemblyFileVersion,, 
(,, 
$str,, (
),,( )
],,) *�
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
}"" �]
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
IStateConfiguration 
< 
T 
, 
TState %
,% &
TTrigger' /
>/ 0 
AddDynamicTransition1 E
(E F
TTriggerF N
triggerO V
,V W
FuncX \
<\ ]
T] ^
,^ _
TState` f
>f g
functionh p
,p q
stringr x
namey }
=~ 
null
� �
,
� �
uint
� �
priority
� �
=
� �
$num
� �
)
� �
;
� �
IStateConfiguration   
<   
T   
,   
TState   %
,  % &
TTrigger  ' /
>  / 0 
AddDynamicTransition  1 E
<  E F
TRequest  F N
>  N O
(  O P
TTrigger  P X
trigger  Y `
,  ` a
Func  b f
<  f g
T  g h
,  h i
TRequest  j r
,  r s
TState  t z
>  z {
function	  | �
,
  � �
string
  � �
name
  � �
=
  � �
null
  � �
,
  � �
uint
  � �
priority
  � �
=
  � �
$num
  � �
)
  � �
where!! 
TRequest!! 
:!! 
class!! "
;!!" #
IStateConfiguration** 
<** 
T** 
,** 
TState** %
,**% &
TTrigger**' /
>**/ 0
AddTransition**1 >
(**> ?
TTrigger**? G
trigger**H O
,**O P
TState**Q W
toState**X _
,**_ `
Func**a e
<**e f
T**f g
,**g h
bool**i m
>**m n
	condition**o x
=**y z
null**{ 
,	** �
string
**� �
name
**� �
=
**� �
null
**� �
,
**� �
uint
**� �
priority
**� �
=
**� �
$num
**� �
)
**� �
;
**� �
IStateConfiguration44 
<44 
T44 
,44 
TState44 %
,44% &
TTrigger44' /
>44/ 0
AddTransition441 >
<44> ?
TRequest44? G
>44G H
(44H I
TTrigger44I Q
trigger44R Y
,44Y Z
TState44[ a
toState44b i
,44i j
Func44k o
<44o p
T44p q
,44q r
TRequest44s {
,44{ |
bool	44} �
>
44� �
	condition
44� �
,
44� �
string
44� �
name
44� �
=
44� �
null
44� �
,
44� �
uint
44� �
priority
44� �
=
44� �
$num
44� �
)
44� �
where55 
TRequest55 
:55 
class55 "
;55" #
IStateConfiguration== 
<== 
T== 
,== 
TState== %
,==% &
TTrigger==' /
>==/ 0
AddAutoTransition==1 B
(==B C
TState==C I
toState==J Q
,==Q R
Func==S W
<==W X
T==X Y
,==Y Z
bool==[ _
>==_ `
	condition==a j
===k l
null==m q
,==q r
string==s y
name==z ~
=	== �
null
==� �
,
==� �
uint
==� �
priority
==� �
=
==� �
$num
==� �
)
==� �
;
==� �
IStateConfiguration?? 
<?? 
T?? 
,?? 
TState?? %
,??% &
TTrigger??' /
>??/ 0!
AddFallbackTransition??1 F
(??F G
Func??G K
<??K L
T??L M
,??M N
bool??O S
>??S T
	condition??U ^
=??_ `
null??a e
,??e f
string??g m
name??n r
=??s t
null??u y
,??y z
uint??{ 
priority
??� �
=
??� �
$num
??� �
)
??� �
;
??� �
IStateConfigurationII 
<II 
TII 
,II 
TStateII %
,II% &
TTriggerII' /
>II/ 0
AddAutoTransitionII1 B
<IIB C
TRequestIIC K
>IIK L
(IIL M
TStateIIM S
toStateIIT [
,II[ \
FuncII] a
<IIa b
TIIb c
,IIc d
TRequestIIe m
,IIm n
boolIIo s
>IIs t
	conditionIIu ~
=	II �
null
II� �
,
II� �
string
II� �
name
II� �
=
II� �
null
II� �
,
II� �
uint
II� �
priority
II� �
=
II� �
$num
II� �
)
II� �
whereJJ 
TRequestJJ 
:JJ 
classJJ "
;JJ" #
IStateConfigurationLL 
<LL 
TLL 
,LL 
TStateLL %
,LL% &
TTriggerLL' /
>LL/ 0!
AddFallbackTransitionLL1 F
<LLF G
TRequestLLG O
>LLO P
(LLP Q
FuncLLQ U
<LLU V
TLLV W
,LLW X
TRequestLLY a
,LLa b
boolLLc g
>LLg h
	conditionLLi r
=LLs t
nullLLu y
,LLy z
string	LL{ �
name
LL� �
=
LL� �
null
LL� �
,
LL� �
uint
LL� �
priority
LL� �
=
LL� �
$num
LL� �
)
LL� �
whereMM 
TRequestMM 
:MM 
classMM "
;MM" #
IStateConfigurationVV 
<VV 
TVV 
,VV 
TStateVV %
,VV% &
TTriggerVV' /
>VV/ 0
AddAutoTransitionVV1 B
(VVB C
TStateVVC I
toStateVVJ Q
,VVQ R
FuncVVS W
<VVW X
TVVX Y
,VVY Z
boolVV[ _
>VV_ `
	conditionVVa j
,VVj k
TStateVVl r
previousState	VVs �
,
VV� �
string
VV� �
name
VV� �
=
VV� �
null
VV� �
,
VV� �
uint
VV� �
priority
VV� �
=
VV� �
$num
VV� �
)
VV� �
;
VV� �
IStateConfigurationXX 
<XX 
TXX 
,XX 
TStateXX %
,XX% &
TTriggerXX' /
>XX/ 0!
AddFallbackTransitionXX1 F
(XXF G
FuncXXG K
<XXK L
TXXL M
,XXM N
boolXXO S
>XXS T
	conditionXXU ^
,XX^ _
TStateXX` f
previousStateXXg t
,XXt u
stringXXv |
name	XX} �
=
XX� �
null
XX� �
,
XX� �
uint
XX� �
priority
XX� �
=
XX� �
$num
XX� �
)
XX� �
;
XX� �
IStateConfigurationbb 
<bb 
Tbb 
,bb 
TStatebb %
,bb% &
TTriggerbb' /
>bb/ 0
AddAutoTransitionbb1 B
<bbB C
TRequestbbC K
>bbK L
(bbL M
TStatebbM S
toStatebbT [
,bb[ \
Funcbb] a
<bba b
Tbbb c
,bbc d
TRequestbbe m
,bbm n
boolbbo s
>bbs t
	conditionbbu ~
,bb~ 
TState
bb� �
previousState
bb� �
,
bb� �
string
bb� �
name
bb� �
=
bb� �
null
bb� �
,
bb� �
uint
bb� �
priority
bb� �
=
bb� �
$num
bb� �
)
bb� �
wherecc 
TRequestcc 
:cc 
classcc "
;cc" #
IStateConfigurationee 
<ee 
Tee 
,ee 
TStateee %
,ee% &
TTriggeree' /
>ee/ 0!
AddFallbackTransitionee1 F
<eeF G
TRequesteeG O
>eeO P
(eeP Q
FunceeQ U
<eeU V
TeeV W
,eeW X
TRequesteeY a
,eea b
booleec g
>eeg h
	conditioneei r
,eer s
TStateeet z
previousState	ee{ �
,
ee� �
string
ee� �
name
ee� �
=
ee� �
null
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
ee� �
whereff 
TRequestff 
:ff 
classff "
;ff" #
IStateConfigurationmm 
<mm 
Tmm 
,mm 
TStatemm %
,mm% &
TTriggermm' /
>mm/ 0
AddEntryActionmm1 ?
(mm? @
Actionmm@ F
<mmF G
TmmG H
>mmH I
actionmmJ P
)mmP Q
;mmQ R
IStateConfigurationtt 
<tt 
Ttt 
,tt 
TStatett %
,tt% &
TTriggertt' /
>tt/ 0
AddReentryActiontt1 A
(ttA B
ActionttB H
<ttH I
TttI J
>ttJ K
actionttL R
)ttR S
;ttS T
IStateConfiguration|| 
<|| 
T|| 
,|| 
TState|| %
,||% &
TTrigger||' /
>||/ 0
AddEntryAction||1 ?
(||? @
Action||@ F
<||F G
T||G H
>||H I
action||J P
,||P Q
TState||R X
previousState||Y f
)||f g
;||g h!
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
}�� �m
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
IStateConfigurationAsync&&  
<&&  !
T&&! "
,&&" #
TState&&$ *
,&&* +
TTrigger&&, 4
>&&4 5
AddTransition&&6 C
(&&C D
TTrigger&&D L
trigger&&M T
,&&T U
TState&&V \
toState&&] d
,&&d e
Func&&f j
<&&j k
T&&k l
,&&l m
CancellationToken&&n 
,	&& �
Task
&&� �
<
&&� �
bool
&&� �
>
&&� �
>
&&� �
conditionAsync
&&� �
=
&&� �
null
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
&&� �
;
&&� �$
IStateConfigurationAsync00  
<00  !
T00! "
,00" #
TState00$ *
,00* +
TTrigger00, 4
>004 5
AddTransition006 C
<00C D
TRequest00D L
>00L M
(00M N
TTrigger00N V
trigger00W ^
,00^ _
TState00` f
toState00g n
,00n o
Func00p t
<00t u
T00u v
,00v w
TRequest	00x �
,
00� �
CancellationToken
00� �
,
00� �
Task
00� �
<
00� �
bool
00� �
>
00� �
>
00� �
conditionAsync
00� �
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
00� �
where11 
TRequest11 
:11 
class11 "
;11" #$
IStateConfigurationAsync99  
<99  !
T99! "
,99" #
TState99$ *
,99* +
TTrigger99, 4
>994 5 
AddDynamicTransition996 J
(99J K
TTrigger99K S
trigger99T [
,99[ \
Func99] a
<99a b
T99b c
,99c d
CancellationToken99e v
,99v w
Task99x |
<99| }
TState	99} �
>
99� �
>
99� �
function
99� �
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
99� �
;
99� �$
IStateConfigurationAsyncBB  
<BB  !
TBB! "
,BB" #
TStateBB$ *
,BB* +
TTriggerBB, 4
>BB4 5 
AddDynamicTransitionBB6 J
<BBJ K
TRequestBBK S
>BBS T
(BBT U
TTriggerBBU ]
triggerBB^ e
,BBe f
FuncBBg k
<BBk l
TBBl m
,BBm n
TRequestBBo w
,BBw x
CancellationToken	BBy �
,
BB� �
Task
BB� �
<
BB� �
TState
BB� �
>
BB� �
>
BB� �
function
BB� �
,
BB� �
string
BB� �
name
BB� �
=
BB� �
null
BB� �
,
BB� �
uint
BB� �
priority
BB� �
=
BB� �
$num
BB� �
)
BB� �
whereCC 
TRequestCC 
:CC 
classCC "
;CC" #$
IStateConfigurationAsyncKK  
<KK  !
TKK! "
,KK" #
TStateKK$ *
,KK* +
TTriggerKK, 4
>KK4 5
AddAutoTransitionKK6 G
(KKG H
TStateKKH N
toStateKKO V
,KKV W
FuncKKX \
<KK\ ]
TKK] ^
,KK^ _
CancellationTokenKK` q
,KKq r
TaskKKs w
<KKw x
boolKKx |
>KK| }
>KK} ~
	condition	KK �
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
KK� �
;
KK� �$
IStateConfigurationAsyncMM  
<MM  !
TMM! "
,MM" #
TStateMM$ *
,MM* +
TTriggerMM, 4
>MM4 5!
AddFallbackTransitionMM6 K
(MMK L
FuncMML P
<MMP Q
TMMQ R
,MMR S
CancellationTokenMMT e
,MMe f
TaskMMg k
<MMk l
boolMMl p
>MMp q
>MMq r
	conditionMMs |
,MM| }
string	MM~ �
name
MM� �
=
MM� �
null
MM� �
,
MM� �
uint
MM� �
priority
MM� �
=
MM� �
$num
MM� �
)
MM� �
;
MM� �$
IStateConfigurationAsyncVV  
<VV  !
TVV! "
,VV" #
TStateVV$ *
,VV* +
TTriggerVV, 4
>VV4 5
AddAutoTransitionVV6 G
<VVG H
TRequestVVH P
>VVP Q
(VVQ R
TStateVVR X
toStateVVY `
,VV` a
FuncVVb f
<VVf g
TVVg h
,VVh i
TRequestVVj r
,VVr s
CancellationToken	VVt �
,
VV� �
Task
VV� �
<
VV� �
bool
VV� �
>
VV� �
>
VV� �
	condition
VV� �
,
VV� �
string
VV� �
name
VV� �
=
VV� �
null
VV� �
,
VV� �
uint
VV� �
priority
VV� �
=
VV� �
$num
VV� �
)
VV� �
whereWW 
TRequestWW 
:WW 
classWW "
;WW" #$
IStateConfigurationAsyncYY  
<YY  !
TYY! "
,YY" #
TStateYY$ *
,YY* +
TTriggerYY, 4
>YY4 5!
AddFallbackTransitionYY6 K
<YYK L
TRequestYYL T
>YYT U
(YYU V
FuncYYV Z
<YYZ [
TYY[ \
,YY\ ]
TRequestYY^ f
,YYf g
CancellationTokenYYh y
,YYy z
TaskYY{ 
<	YY �
bool
YY� �
>
YY� �
>
YY� �
	condition
YY� �
,
YY� �
string
YY� �
name
YY� �
=
YY� �
null
YY� �
,
YY� �
uint
YY� �
priority
YY� �
=
YY� �
$num
YY� �
)
YY� �
whereZZ 
TRequestZZ 
:ZZ 
classZZ "
;ZZ" #$
IStateConfigurationAsynccc  
<cc  !
Tcc! "
,cc" #
TStatecc$ *
,cc* +
TTriggercc, 4
>cc4 5
AddAutoTransitioncc6 G
(ccG H
TStateccH N
toStateccO V
,ccV W
FuncccX \
<cc\ ]
Tcc] ^
,cc^ _
CancellationTokencc` q
,ccq r
Taskccs w
<ccw x
boolccx |
>cc| }
>cc} ~
	condition	cc �
,
cc� �
TState
cc� �
previousState
cc� �
,
cc� �
string
cc� �
name
cc� �
=
cc� �
null
cc� �
,
cc� �
uint
cc� �
priority
cc� �
=
cc� �
$num
cc� �
)
cc� �
;
cc� �$
IStateConfigurationAsyncee  
<ee  !
Tee! "
,ee" #
TStateee$ *
,ee* +
TTriggeree, 4
>ee4 5!
AddFallbackTransitionee6 K
(eeK L
FunceeL P
<eeP Q
TeeQ R
,eeR S
CancellationTokeneeT e
,eee f
Taskeeg k
<eek l
booleel p
>eep q
>eeq r
	conditionees |
,ee| }
TState	ee~ �
previousState
ee� �
,
ee� �
string
ee� �
name
ee� �
=
ee� �
null
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
ee� �
;
ee� �$
IStateConfigurationAsyncoo  
<oo  !
Too! "
,oo" #
TStateoo$ *
,oo* +
TTriggeroo, 4
>oo4 5
AddAutoTransitionoo6 G
<ooG H
TRequestooH P
>ooP Q
(ooQ R
TStateooR X
toStateooY `
,oo` a
Funcoob f
<oof g
Toog h
,ooh i
TRequestooj r
,oor s
CancellationToken	oot �
,
oo� �
Task
oo� �
<
oo� �
bool
oo� �
>
oo� �
>
oo� �
	condition
oo� �
,
oo� �
TState
oo� �
previousState
oo� �
,
oo� �
string
oo� �
name
oo� �
=
oo� �
null
oo� �
,
oo� �
uint
oo� �
priority
oo� �
=
oo� �
$num
oo� �
)
oo� �
wherepp 
TRequestpp 
:pp 
classpp "
;pp" #$
IStateConfigurationAsyncrr  
<rr  !
Trr! "
,rr" #
TStaterr$ *
,rr* +
TTriggerrr, 4
>rr4 5!
AddFallbackTransitionrr6 K
<rrK L
TRequestrrL T
>rrT U
(rrU V
FuncrrV Z
<rrZ [
Trr[ \
,rr\ ]
TRequestrr^ f
,rrf g
CancellationTokenrrh y
,rry z
Taskrr{ 
<	rr �
bool
rr� �
>
rr� �
>
rr� �
	condition
rr� �
,
rr� �
TState
rr� �
previousState
rr� �
,
rr� �
string
rr� �
name
rr� �
=
rr� �
null
rr� �
,
rr� �
uint
rr� �
priority
rr� �
=
rr� �
$num
rr� �
)
rr� �
wheress 
TRequestss 
:ss 
classss "
;ss" #$
IStateConfigurationAsynczz  
<zz  !
Tzz! "
,zz" #
TStatezz$ *
,zz* +
TTriggerzz, 4
>zz4 5
AddEntryActionzz6 D
(zzD E
FunczzE I
<zzI J
TzzJ K
,zzK L
CancellationTokenzzM ^
,zz^ _
Taskzz` d
>zzd e
actionzzf l
)zzl m
;zzm n&
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
} �
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
� �
} 
} �
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
}FF ы
TC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateConfiguration.cs
	namespace 	
NStateManager
 
{ 
public 

class 
StateConfiguration #
<# $
T$ %
,% &
TState' -
,- .
TTrigger/ 7
>7 8
:9 :"
StateConfigurationBase; Q
<Q R
TR S
,S T
TStateU [
,[ \
TTrigger] e
>e f
,f g(
IStateConfigurationInternal	h �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
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
,* +
Action, 2
<2 3
T3 4
>4 5
>5 6&
_previousStateEntryActions7 Q
=R S
newT W

DictionaryX b
<b c
TStatec i
,i j
Actionk q
<q r
Tr s
>s t
>t u
(u v
)v w
;w x
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
>5 6!
_nextStateExitActions7 L
=M N
newO R

DictionaryS ]
<] ^
TState^ d
,d e
Actionf l
<l m
Tm n
>n o
>o p
(p q
)q r
;r s
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
new` c

Dictionaryd n
<n o
TTriggero w
,w x
TriggerActionBase	y �
<
� �
T
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
private 
Action 
< 
T 
> 
_defaultEntryAction -
;- .
private 
Action 
< 
T 
> 
_defaultExitAction ,
;, -
private 
Action 
< 
T 
> 
_reentryAction (
;( )
private   '
IStateConfigurationInternal   +
<  + ,
T  , -
,  - .
TState  / 5
,  5 6
TTrigger  7 ?
>  ? @
_superState  A L
;  L M
internal(( 
StateConfiguration(( #
(((# $
TState(($ *
state((+ 0
,((0 1
Func((2 6
<((6 7
T((7 8
,((8 9
TState((: @
>((@ A
stateAccessor((B O
,((O P
Action((Q W
<((W X
T((X Y
,((Y Z
TState(([ a
>((a b
stateMutator((c o
)((o p
:)) 
base)) 
()) 
state)) 
,)) 
stateAccessor)) '
,))' (
stateMutator))) 5
)))5 6
{** 	
}**
 
public44 
IStateConfiguration44 "
<44" #
T44# $
,44$ %
TState44& ,
,44, -
TTrigger44. 6
>446 7 
AddDynamicTransition448 L
(44L M
TTrigger44M U
trigger44V ]
,55 
Func55 
<55 
T55 
,55 
TState55 
>55 
function55 &
,66 
string66 
name66 
=66 
null66  
,77 
uint77 
priority77 
=77 
$num77 
)77  
{88 	
if99 
(99 
function99 
==99 
null99  
)99  !
{:: 
throw:: 
new:: !
ArgumentNullException:: -
(::- .
nameof::. 4
(::4 5
function::5 =
)::= >
)::> ?
;::? @
}::A B
var<< 

transition<< 
=<< "
StateTransitionFactory<< 3
<<<3 4
T<<4 5
,<<5 6
TState<<7 =
,<<= >
TTrigger<<? G
><<G H
.<<H I
GetStateTransition<<I [
(<<[ \
StateAccessor<<\ i
,== 
StateMutator== 
,>> 
State>> 
,?? 
function?? 
,@@ 
name@@ 
,AA 
priorityAA 
)AA 
;AA 
AddTransitionBB 
(BB 
triggerBB !
,BB! "

transitionBB# -
)BB- .
;BB. /
returnDD 
thisDD 
;DD 
}EE 	
publicPP 
IStateConfigurationPP "
<PP" #
TPP# $
,PP$ %
TStatePP& ,
,PP, -
TTriggerPP. 6
>PP6 7 
AddDynamicTransitionPP8 L
<PPL M
TRequestPPM U
>PPU V
(PPV W
TTriggerPPW _
triggerPP` g
,QQ 
FuncQQ 
<QQ 
TQQ 
,QQ 
TRequestQQ 
,QQ 
TStateQQ  &
>QQ& '
functionQQ( 0
,RR 
stringRR 
nameRR 
=RR 
nullRR  
,SS 
uintSS 
prioritySS 
=SS 
$numSS 
)SS  
whereTT 
TRequestTT 
:TT 
classTT "
{UU 	
ifVV 
(VV 
functionVV 
==VV 
nullVV  
)VV  !
{WW 
throwWW 
newWW !
ArgumentNullExceptionWW -
(WW- .
nameofWW. 4
(WW4 5
functionWW5 =
)WW= >
)WW> ?
;WW? @
}WWA B
varYY 

transitionYY 
=YY "
StateTransitionFactoryYY 3
<YY3 4
TYY4 5
,YY5 6
TStateYY7 =
,YY= >
TTriggerYY? G
>YYG H
.YYH I
GetStateTransitionYYI [
(YY[ \
StateAccessorYY\ i
,ZZ 
StateMutatorZZ 
,[[ 
State[[ 
,\\ 
function\\ 
,]] 
name]] 
,^^ 
priority^^ 
)^^ 
;^^ 
AddTransition__ 
(__ 
trigger__ !
,__! "

transition__# -
)__- .
;__. /
returnaa 
thisaa 
;aa 
}bb 	
publicmm 
IStateConfigurationmm "
<mm" #
Tmm# $
,mm$ %
TStatemm& ,
,mm, -
TTriggermm. 6
>mm6 7
AddTransitionmm8 E
(mmE F
TTriggermmF N
triggermmO V
,nn 
TStatenn 
toStatenn 
,oo 
Funcoo 
<oo 
Too 
,oo 
booloo 
>oo 
	conditionoo %
=oo& '
nulloo( ,
,pp 
stringpp 
namepp 
=pp 
nullpp  
,qq 
uintqq 
priorityqq 
=qq 
$numqq 
)qq  
{rr 	
ifss 
(ss 
	conditionss 
==ss 
nullss !
)ss! "
{tt 
	conditiontt 
=tt 
_tt 
=>tt 
truett #
;tt# $
}tt% &
varvv 

transitionvv 
=vv "
StateTransitionFactoryvv 3
<vv3 4
Tvv4 5
,vv5 6
TStatevv7 =
,vv= >
TTriggervv? G
>vvG H
.vvH I
GetStateTransitionvvI [
(vv[ \
StateAccessorvv\ i
,ww 
StateMutatorww 
,xx 
Statexx 
,yy 
toStateyy 
,zz 
	conditionzz 
,{{ 
name{{ 
,|| 
priority|| 
)|| 
;|| 
AddTransition}} 
(}} 
trigger}} !
,}}! "

transition}}# -
)}}- .
;}}. /
return 
this 
; 
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
��6 7
AddTransition
��8 E
<
��E F
TRequest
��F N
>
��N O
(
��O P
TTrigger
��P X
trigger
��Y `
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
�� 
toState
�� 
,
�� 
	condition
�� 
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
��6 7
AddAutoTransition
��8 I
(
��I J
TState
��J P
toState
��Q X
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
=
��& '
null
��( ,
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 d
)
��d e
;
��e f
}
��g h
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
�� 
	condition
�� 
=
�� 
_
�� 
=>
�� 
true
�� #
;
��# $
}
��% &#
DefaultAutoTransition
�� !
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
StateAccessor
��c p
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
	condition
�� 
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
�� 
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
��6 7
AddAutoTransition
��8 I
<
��I J
TRequest
��J R
>
��R S
(
��S T
TState
��T Z
toState
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
=
��0 1
null
��2 6
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 b
)
��b c
;
��c d
}
��e f
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
�� 
	condition
�� 
=
�� 
(
�� 
_
�� 
,
�� 
request
�� %
)
��% &
=>
��' )
true
��* .
;
��. /
}
��0 1#
DefaultAutoTransition
�� !
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
StateAccessor
��c p
,
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
	condition
�� 
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
�� 
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
��6 7
AddAutoTransition
��8 I
(
��I J
TState
��J P
toState
��Q X
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
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
�� 1
#AutoTransition already defined for 
�� 9
{
��9 :
previousState
��: G
}
��G H<
.. Only one auto transition allowed per toState
��H v
"
��v w
)
��w x
;
��x y
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
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
toState
�� 
,
�� 
	condition
�� 
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
AddAutoTransition
��8 I
<
��I J
TRequest
��J R
>
��R S
(
��S T
TState
��T Z
toState
��[ b
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
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
�� 1
#AutoTransition already defined for 
�� 9
{
��9 :
previousState
��: G
}
��G HC
5. Only one auto transition allowed per previous state
��H }
"
��} ~
)
��~ 
;�� �
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
��6 7#
AddFallbackTransition
��8 M
<
��M N
TRequest
��N V
>
��V W
(
��W X
Func
��X \
<
��\ ]
T
��] ^
,
��^ _
TRequest
��` h
,
��h i
bool
��j n
>
��n o
	condition
��p y
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
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
�� 1
#AutoTransition already defined for 
�� 9
{
��9 :
previousState
��: G
}
��G HC
5. Only one auto transition allowed per previous state
��H }
"
��} ~
)
��~ 
;�� �
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
�� 
StateMutator
�� 
,
�� 
State
�� 
,
�� 
State
�� 
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
�� 
=
��  !
action
��" (
??
��) +
throw
��, 1
new
��2 5#
ArgumentNullException
��6 K
(
��K L
nameof
��L R
(
��R S
action
��S Y
)
��Y Z
)
��Z [
;
��[ \
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
��6 7#
AddFallbackTransition
��8 M
(
��M N
Func
��N R
<
��R S
T
��S T
,
��T U
bool
��V Z
>
��Z [
	condition
��\ e
=
��f g
null
��h l
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 b
)
��b c
;
��c d
}
��e f
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
��% &#
DefaultAutoTransition
�� !
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
StateAccessor
��c p
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
�� 
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
��6 7#
AddFallbackTransition
��8 M
<
��M N
TRequest
��N V
>
��V W
(
��W X
Func
��X \
<
��\ ]
T
��] ^
,
��^ _
TRequest
��` h
,
��h i
bool
��j n
>
��n o
	condition
��p y
=
��z {
null��| �
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 b
)
��b c
;
��c d
}
��e f
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
�� 
	condition
�� 
=
�� 
(
�� 
_
�� 
,
�� 
request
�� %
)
��% &
=>
��' )
true
��* .
;
��. /
}
��0 1#
DefaultAutoTransition
�� !
=
��" #$
StateTransitionFactory
��$ :
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
.
��O P 
GetStateTransition
��P b
(
��b c
StateAccessor
��c p
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
�� 
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
��6 7#
AddFallbackTransition
��8 M
(
��M N
Func
��N R
<
��R S
T
��S T
,
��T U
bool
��V Z
>
��Z [
	condition
��\ e
,
��
 
TState
�� 
previousState
��  
,
��
 
string
�� 
name
�� 
=
�� 
null
�� 
,
��
 
uint
�� 
priority
�� 
=
�� 
$num
�� 
)
�� 
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
��B C
if
�� 
(
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
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
#AutoTransition already defined for 
��4 W
{
��W X
previousState
��X e
}
��e f=
.. Only one auto transition allowed per toState��f �
"��� �
)��� �
;��� �
}��� �
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 [
)
��[ \
;
��\ ]
}
�� 
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
(
��H I
TTrigger
��I Q
trigger
��R Y
,
��Y Z
Action
��[ a
<
��a b
T
��b c
>
��c d
action
��e k
)
��k l
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
�� 	
if
�� 
(
�� *
PreviousStateAutoTransitions
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
��Z ]
action
��^ d
)
��d e
)
��e f
{
�� 
return
�� 
action
�� 
.
�� 
Execute
�� #
(
��# $

parameters
��$ .
,
��. /
currentResult
��0 =
)
��= >
;
��> ?
}
��@ A
if
�� 
(
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
return
�� #
DefaultAutoTransition
�� *
.
��* +
Execute
��+ 2
(
��2 3

parameters
��3 =
,
��= >
currentResult
��? L
)
��L M
;
��M N
}
��O P
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
)
��- .
;
��. /
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
��6 7
IsSubStateOf
��8 D
(
��D E!
IStateConfiguration
��E X
<
��X Y
T
��Y Z
,
��Z [
TState
��\ b
,
��b c
TTrigger
��d l
>
��l m&
superStateConfiguration��n �
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
>==; <
AddAutoTransition=== N
(==N O
TState==O U
toState==V ]
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
(BB !
DefaultAutoTransitionBB %
!=BB& (
nullBB) -
)BB- .
{CC 
throwCC 
newCC %
InvalidOperationExceptionCC 1
(CC1 2
$strCC2 d
)CCd e
;CCe f
}CCg h
ifEE 
(EE 
	conditionEE 
==EE 
nullEE !
)EE! "
{FF 
throwFF 
newFF !
ArgumentNullExceptionFF -
(FF- .
nameofFF. 4
(FF4 5
	conditionFF5 >
)FF> ?
)FF? @
;FF@ A
}FFB C!
DefaultAutoTransitionHH !
=HH" #"
StateTransitionFactoryHH$ :
<HH: ;
THH; <
,HH< =
TStateHH> D
,HHD E
TTriggerHHF N
>HHN O
.HHO P
GetStateTransitionHHP b
(HHb c
StateAccessorHHc p
,II 
StateMutatorII 
,JJ 
StateJJ 
,KK 
toStateKK 
,LL 
	conditionLL 
,MM 
nameMM 
,NN 
priorityNN 
)NN 
;NN 
returnPP 
thisPP 
;PP 
}QQ 	
public\\ $
IStateConfigurationAsync\\ '
<\\' (
T\\( )
,\\) *
TState\\+ 1
,\\1 2
TTrigger\\3 ;
>\\; <
AddAutoTransition\\= N
<\\N O
TRequest\\O W
>\\W X
(\\X Y
TState\\Y _
toState\\` g
,]]
 
Func]] 
<]] 
T]] 
,]] 
TRequest]] 
,]] 
CancellationToken]] /
,]]/ 0
Task]]1 5
<]]5 6
bool]]6 :
>]]: ;
>]]; <
	condition]]= F
,^^
 
string^^ 
name^^ 
=^^ 
null^^ 
,__
 
uint__ 
priority__ 
=__ 
$num__ 
)__ 
where`` 
TRequest`` 
:`` 
class`` "
{aa 	
ifbb 
(bb !
DefaultAutoTransitionbb %
!=bb& (
nullbb) -
)bb- .
{cc 
throwcc 
newcc %
InvalidOperationExceptioncc 1
(cc1 2
$strcc2 b
)ccb c
;ccc d
}cce f
ifee 
(ee 
	conditionee 
==ee 
nullee !
)ee! "
{ff 
throwff 
newff !
ArgumentNullExceptionff -
(ff- .
nameofff. 4
(ff4 5
	conditionff5 >
)ff> ?
)ff? @
;ff@ A
}ffB C!
DefaultAutoTransitionhh !
=hh" #"
StateTransitionFactoryhh$ :
<hh: ;
Thh; <
,hh< =
TStatehh> D
,hhD E
TTriggerhhF N
>hhN O
.hhO P
GetStateTransitionhhP b
(hhb c
StateAccessorhhc p
,ii 
StateMutatorii 
,jj 
Statejj 
,kk 
toStatekk 
,ll 
	conditionll 
,mm 
namemm 
,nn 
prioritynn 
)nn 
;nn 
returnpp 
thispp 
;pp 
}qq 	
public|| $
IStateConfigurationAsync|| '
<||' (
T||( )
,||) *
TState||+ 1
,||1 2
TTrigger||3 ;
>||; <
AddAutoTransition||= N
(||N O
TState||O U
toState||V ]
,}}
 
Func}} 
<}} 
T}} 
,}} 
CancellationToken}} %
,}}% &
Task}}' +
<}}+ ,
bool}}, 0
>}}0 1
>}}1 2
	condition}}3 <
,~~
 
TState~~ 
previousState~~  
,
 
string 
name 
= 
null 
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
��B C
if
�� 
(
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$"
�� 1
#AutoTransition already defined for 
�� 9
{
��9 :
previousState
��: G
}
��G H<
.. Only one auto transition allowed per toState
��H v
"
��v w
)
��w x
;
��x y
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
AddAutoTransition
��= N
<
��N O
TRequest
��O W
>
��W X
(
��X Y
TState
��Y _
toState
��` g
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
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 1
(
��1 2
$"
��2 41
#AutoTransition already defined for 
��4 W
{
��W X
previousState
��X e
}
��e f=
.. Only one auto transition allowed per toState��f �
"��� �
)��� �
;��� �
}��� �
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
��; <#
AddFallbackTransition
��= R
(
��R S
Func
��S W
<
��W X
T
��X Y
,
��Y Z
CancellationToken
��[ l
,
��l m
Task
��n r
<
��r s
bool
��s w
>
��w x
>
��x y
	condition��z �
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 b
)
��b c
;
��c d
}
��e f
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
��B C#
DefaultAutoTransition
�� !
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
StateAccessor
��c p
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
�� 
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
��; <#
AddFallbackTransition
��= R
<
��R S
TRequest
��S [
>
��[ \
(
��\ ]
Func
��] a
<
��a b
T
��b c
,
��c d
TRequest
��e m
,
��m n 
CancellationToken��o �
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
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
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
��2 b
)
��b c
;
��c d
}
��e f
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
��B C#
DefaultAutoTransition
�� !
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
StateAccessor
��c p
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
�� 
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
��; <#
AddFallbackTransition
��= R
(
��R S
Func
��S W
<
��W X
T
��X Y
,
��Y Z
CancellationToken
��[ l
,
��l m
Task
��n r
<
��r s
bool
��s w
>
��w x
>
��x y
	condition��z �
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
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
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
��2 41
#AutoTransition already defined for 
��4 W
{
��W X
previousState
��X e
}
��e fC
4. Only one auto transition allowed per previousState��f �
"��� �
)��� �
;��� �
}��� �
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
��; <#
AddFallbackTransition
��= R
<
��R S
TRequest
��S [
>
��[ \
(
��\ ]
Func
��] a
<
��a b
T
��b c
,
��c d
TRequest
��e m
,
��m n 
CancellationToken��o �
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
��B C
if
�� 
(
�� *
PreviousStateAutoTransitions
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
previousState
��9 F
)
��F G
)
��G H
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
#AutoTransition already defined for 
��4 W
{
��W X
previousState
��X e
}
��e fC
4. Only one auto transition allowed per previousState��f �
"��� �
)��� �
;��� �
}��� �
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
�� *
PreviousStateAutoTransitions
�� (
.
��( )
Add
��) ,
(
��, -
previousState
��- :
,
��: ;

transition
��< F
)
��F G
;
��G H
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
�� 	
if
�� 
(
�� *
PreviousStateAutoTransitions
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
��Z ]
action
��^ d
)
��d e
)
��e f
{
�� 
return
�� 
await
�� 
action
�� !
.
��! "
ExecuteAsync
��" .
(
��. /

parameters
��/ 9
,
��9 :
currentResult
��; H
)
��H I
.
��I J
ConfigureAwait
��J X
(
��X Y'
continueOnCapturedContext
��Y r
:
��r s
false
��t y
)
��y z
;
��z {
}
��| }
if
�� 
(
�� #
DefaultAutoTransition
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
return
�� 
await
�� #
DefaultAutoTransition
�� 0
.
��0 1
ExecuteAsync
��1 =
(
��= >

parameters
��> H
,
��H I
currentResult
��J W
)
��W X
.
��X Y
ConfigureAwait
��Y g
(
��g h(
continueOnCapturedContext��h �
:��� �
false��� �
)��� �
;��� �
}��� �
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
��  
AllowedTransitions
�� "
.
��" #
TryGetValue
��# .
(
��. /

parameters
��/ 9
.
��9 :
Trigger
��: A
,
��A B
out
��C F
var
��G J
transitions
��K V
)
��V W
)
��W X
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
}�� �9
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
{ 
public 
Func 
< 
T 
, 
TState 
> 
StateAccessor ,
{- .
get/ 2
;2 3
}4 5
public 
Action 
< 
T 
, 
TState 
>  
StateMutator! -
{. /
get0 3
;3 4
}5 6
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
>U V
AllowedTransitionsW i
=j k
newl o

Dictionaryp z
<z {
TTrigger	{ �
,
� �
List
� �
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
� �
	protected 

Dictionary 
< 
TState #
,# $
StateTransitionBase% 8
<8 9
T9 :
,: ;
TState< B
,B C
TTriggerD L
>L M
>M N(
PreviousStateAutoTransitionsO k
=l m
newn q

Dictionaryr |
<| }
TState	} �
,
� �!
StateTransitionBase
� �
<
� �
T
� �
,
� �
TState
� �
,
� �
TTrigger
� �
>
� �
>
� �
(
� �
)
� �
;
� �
	protected 
StateTransitionBase %
<% &
T& '
,' (
TState) /
,/ 0
TTrigger1 9
>9 :!
DefaultAutoTransition; P
;P Q
public 
TState 
State 
{ 
get !
;! "
}# $
internal$$ "
StateConfigurationBase$$ '
($$' (
TState$$( .
state$$/ 4
,$$4 5
Func$$6 :
<$$: ;
T$$; <
,$$< =
TState$$> D
>$$D E
stateAccessor$$F S
,$$S T
Action$$U [
<$$[ \
T$$\ ]
,$$] ^
TState$$_ e
>$$e f
stateMutator$$g s
)$$s t
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
void00 
AddTransition00 !
(00! "
TTrigger00" *
trigger00+ 2
,002 3
StateTransitionBase004 G
<00G H
T00H I
,00I J
TState00K Q
,00Q R
TTrigger00S [
>00[ \

transition00] g
)00g h
{11 	
if22 
(22 
!22 
AllowedTransitions22 #
.22# $
TryGetValue22$ /
(22/ 0
trigger220 7
,227 8
out229 <
var22= @
existingTransitions22A T
)22T U
)22U V
{33 
AllowedTransitions33  
.33  !
Add33! $
(33$ %
trigger33% ,
,33, -
new33. 1
List332 6
<336 7
StateTransitionBase337 J
<33J K
T33K L
,33L M
TState33N T
,33T U
TTrigger33V ^
>33^ _
>33_ `
{33a b

transition33b l
}33l m
)33m n
;33n o
}33p q
else44 
{55 
if66 
(66 
existingTransitions66 '
.66' (
Any66( +
(66+ ,
t66, -
=>66. 0
t661 2
.662 3
Priority663 ;
==66< >

transition66? I
.66I J
Priority66J R
)66R S
)66S T
{77 
throw77 
new77 %
InvalidOperationException77 5
(775 6
$"776 8
{778 9
trigger779 @
}77@ A.
" trigger was previously added for 77A c
{77c d
State77d i
}77i j
 state as priority 77j }
{77} ~

transition	77~ �
.
77� �
Priority
77� �
}
77� �
.
77� �
"
77� �
)
77� �
;
77� �
}
77� �
existingTransitions99 #
.99# $
Add99$ '
(99' (

transition99( 2
)992 3
;993 4
}:: 
};; 	
	protected== !
StateTransitionResult== '
<==' (
TState==( .
,==. /
TTrigger==0 8
>==8 9
FireTriggerPrim==: I
(==I J
ExecutionParameters==J ]
<==] ^
T==^ _
,==_ `
TTrigger==a i
>==i j

parameters==k u
)==u v
{>> 	!
StateTransitionResult?? !
<??! "
TState??" (
,??( )
TTrigger??* 2
>??2 3
result??4 :
=??; <
null??= A
;??A B
ifAA 
(AA 
AllowedTransitionsAA "
.AA" #
TryGetValueAA# .
(AA. /

parametersAA/ 9
.AA9 :
TriggerAA: A
,AAA B
outAAC F
varAAG J
transitionsAAK V
)AAV W
)AAW X
{BB 
foreachCC 
(CC 
varCC 

transitionCC '
inCC( *
transitionsCC+ 6
.CC6 7
OrderByCC7 >
(CC> ?
tCC? @
=>CCA C
tCCD E
.CCE F
PriorityCCF N
)CCN O
)CCO P
{DD 
resultEE 
=EE 

transitionEE '
.EE' (
ExecuteEE( /
(EE/ 0

parametersEE0 :
)EE: ;
;EE; <
ifFF 
(FF 
resultFF 
.FF 
WasSuccessfulFF ,
)FF, -
{GG 
returnGG 
resultGG #
;GG# $
}GG% &
}HH 
}II 
returnKK 
resultKK 
;KK 
}LL 	
}MM 
}NN �
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
readonly 
Func 
< 
T 
,  
TState! '
>' (
_stateAccessor) 7
;7 8
private 
readonly 
Action 
<  
T  !
,! "
TState# )
>) *
_stateMutator+ 8
;8 9
private 
readonly 

Dictionary #
<# $
TState$ *
,* +'
IStateConfigurationInternal, G
<G H
TH I
,I J
TStateK Q
,Q R
TTriggerS [
>[ \
>\ ] 
_stateConfigurations^ r
=s t
new 

Dictionary 
< 
TState !
,! "'
IStateConfigurationInternal# >
<> ?
T? @
,@ A
TStateB H
,H I
TTriggerJ R
>R S
>S T
(T U
)U V
;V W
private 
readonly 

Dictionary #
<# $
TTrigger$ ,
,, -
TriggerActionBase. ?
<? @
T@ A
,A B
TTriggerC K
>K L
>L M
_triggerActionsN ]
=^ _
new   

Dictionary   
<   
TTrigger   #
,  # $
TriggerActionBase  % 6
<  6 7
T  7 8
,  8 9
TTrigger  : B
>  B C
>  C D
(  D E
)  E F
;  F G
public'' 
StateMachine'' 
('' 
Func''  
<''  !
T''! "
,''" #
TState''$ *
>''* +
stateAccessor'', 9
,''9 :
Action''; A
<''A B
T''B C
,''C D
TState''E K
>''K L
stateMutator''M Y
)''Y Z
{(( 	
_stateAccessor)) 
=)) 
stateAccessor)) *
??))+ -
throw)). 3
new))4 7!
ArgumentNullException))8 M
())M N
nameof))N T
())T U
stateAccessor))U b
)))b c
)))c d
;))d e
_stateMutator** 
=** 
stateMutator** (
??**) +
throw**, 1
new**2 5!
ArgumentNullException**6 K
(**K L
nameof**L R
(**R S
stateMutator**S _
)**_ `
)**` a
;**a b
}++ 	
public44 
IStateMachine44 
<44 
T44 
,44 
TState44  &
,44& '
TTrigger44( 0
>440 1
AddTriggerAction442 B
(44B C
TTrigger44C K
trigger44L S
,44S T
Action44U [
<44[ \
T44\ ]
>44] ^
action44_ e
)44e f
{55 	
if66 
(66 
_triggerActions66 
.66  
ContainsKey66  +
(66+ ,
trigger66, 3
)663 4
)664 5
{77 
throw77 
new77 %
InvalidOperationException77 1
(771 2
$"772 4+
Only one action is allowed for 774 S
{77S T
trigger77T [
}77[ \
	 trigger.77\ e
"77e f
)77f g
;77g h
}77i j
_triggerActions99 
.99 
Add99 
(99  
trigger99  '
,99' ( 
TriggerActionFactory99) =
<99= >
T99> ?
,99? @
TTrigger99A I
>99I J
.99J K
GetTriggerAction99K [
(99[ \
action99\ b
)99b c
)99c d
;99d e
return;; 
this;; 
;;; 
}<< 	
publicFF 
IStateMachineFF 
<FF 
TFF 
,FF 
TStateFF  &
,FF& '
TTriggerFF( 0
>FF0 1
AddTriggerActionFF2 B
<FFB C
TRequestFFC K
>FFK L
(FFL M
TTriggerFFM U
triggerFFV ]
,FF] ^
ActionGG 
<GG 
TGG 
,GG 
TRequestGG 
>GG 
actionGG  &
)GG& '
{HH 	
ifII 
(II 
_triggerActionsII 
.II  
ContainsKeyII  +
(II+ ,
triggerII, 3
)II3 4
)II4 5
{JJ 
throwJJ 
newJJ %
InvalidOperationExceptionJJ 1
(JJ1 2
$"JJ2 4+
Only one action is allowed for JJ4 S
{JJS T
triggerJJT [
}JJ[ \
	 trigger.JJ\ e
"JJe f
)JJf g
;JJg h
}JJi j
_triggerActionsLL 
.LL 
AddLL 
(LL  
triggerLL  '
,LL' ( 
TriggerActionFactoryLL) =
<LL= >
TLL> ?
,LL? @
TTriggerLLA I
>LLI J
.LLJ K
GetTriggerActionLLK [
(LL[ \
actionLL\ b
)LLb c
)LLc d
;LLd e
returnNN 
thisNN 
;NN 
}OO 	
publicVV 
IStateConfigurationVV "
<VV" #
TVV# $
,VV$ %
TStateVV& ,
,VV, -
TTriggerVV. 6
>VV6 7
ConfigureStateVV8 F
(VVF G
TStateVVG M
stateVVN S
)VVS T
{WW 	
ifXX 
(XX  
_stateConfigurationsXX $
.XX$ %
TryGetValueXX% 0
(XX0 1
stateXX1 6
,XX6 7
outXX8 ;
varXX< ?
stateConfigurationXX@ R
)XXR S
)XXS T
{YY 
returnYY 
stateConfigurationYY '
;YY' (
}YY) *
var[[ 
newState[[ 
=[[ 
new[[ 
StateConfiguration[[ 1
<[[1 2
T[[2 3
,[[3 4
TState[[5 ;
,[[; <
TTrigger[[= E
>[[E F
([[F G
state[[G L
,[[L M
_stateAccessor[[N \
,[[\ ]
_stateMutator[[^ k
)[[k l
;[[l m 
_stateConfigurations\\  
.\\  !
Add\\! $
(\\$ %
state\\% *
,\\* +
newState\\, 4
)\\4 5
;\\5 6
return]] 
newState]] 
;]] 
}^^ 	
publicgg !
StateTransitionResultgg $
<gg$ %
TStategg% +
,gg+ ,
TTriggergg- 5
>gg5 6
FireTriggergg7 B
<ggB C
TRequestggC K
>ggK L
(ggL M
TggM N
contextggO V
,ggV W
TTriggerggX `
triggergga h
,ggh i
TRequestggj r
requestggs z
)ggz {
wherehh 
TRequesthh 
:hh 
classhh "
{ii 	
varjj 
executionParametersjj #
=jj$ %
newjj& )
ExecutionParametersjj* =
<jj= >
Tjj> ?
,jj? @
TTriggerjjA I
>jjI J
(jjJ K
triggerjjK R
,jjR S
contextjjT [
,jj[ \
requestjj] d
:jjd e
requestjjf m
)jjm n
;jjn o
varkk 

startStatekk 
=kk 
_stateAccessorkk +
(kk+ ,
contextkk, 3
)kk3 4
;kk4 5
ifmm 
(mm 
_triggerActionsmm 
.mm  
TryGetValuemm  +
(mm+ ,
triggermm, 3
,mm3 4
outmm5 8
varmm9 <
triggerActionmm= J
)mmJ K
)mmK L
{nn 
triggerActionnn 
.nn 
Executenn #
(nn# $
executionParametersnn$ 7
)nn7 8
;nn8 9
}nn: ;
varpp 
resultpp 
=pp 
!pp  
_stateConfigurationspp .
.pp. /
TryGetValuepp/ :
(pp: ;

startStatepp; E
,ppE F
outppG J
varppK N
stateConfigurationppO a
)ppa b
?qq 
newqq !
StateTransitionResultqq +
<qq+ ,
TStateqq, 2
,qq2 3
TTriggerqq4 <
>qq< =
(qq= >
triggerqq> E
,rr 

startStaterr  
,ss 

startStatess  
,tt 

startStatett  
,uu 
lastTransitionNameuu (
:uu( )
stringuu* 0
.uu0 1
Emptyuu1 6
,vv 
transitionDefinedvv '
:vv' (
falsevv) .
)vv. /
:ww 
stateConfigurationww $
.ww$ %
FireTriggerww% 0
(ww0 1
executionParametersww1 D
)wwD E
;wwE F
returnyy &
executeExitAndEntryActionsyy -
(yy- .
executionParametersyy. A
,yyA B
resultyyC I
)yyI J
;yyJ K
}zz 	
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
��4 5
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
}�� �(
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
{ 	
var 

startState 
= 
currentResult *
!=+ -
null. 2
?3 4
currentResult5 B
.B C
StartingStateC P
:Q R
StateAccessorS `
(` a

parametersa k
.k l
Contextl s
)s t
;t u
if 
( 
! 
	Condition 
( 

parameters %
.% &
Context& -
)- .
). /
{ 
if   
(   
currentResult   !
!=  " $
null  % )
)  ) *
{!! 
return!! 
currentResult!! &
;!!& '
}!!( )
return## 
new## !
StateTransitionResult## 0
<##0 1
TState##1 7
,##7 8
TTrigger##9 A
>##A B
(##B C

parameters##C M
.##M N
Trigger##N U
,$$ 

startState$$  
,%% 

startState%%  
,&& 

startState&&  
,'' 
lastTransitionName'' (
:''( )
string''* 0
.''0 1
Empty''1 6
,(( 
conditionMet(( "
:((" #
false(($ )
)(() *
;((* +
})) 
StateMutator++ 
(++ 

parameters++ #
.++# $
Context++$ +
,+++ ,
ToState++- 4
)++4 5
;++5 6
var-- 
transitionResult--  
=--! "
currentResult--# 0
==--1 3
null--4 8
?.. 
new.. !
StateTransitionResult.. +
<..+ ,
TState.., 2
,..2 3
TTrigger..4 <
>..< =
(..= >

parameters..> H
...H I
Trigger..I P
,..P Q

startState..R \
,..\ ]

startState..^ h
,..h i
ToState..j q
,..q r
Name..s w
)..w x
:// 
new// !
StateTransitionResult// +
<//+ ,
TState//, 2
,//2 3
TTrigger//4 <
>//< =
(//= >

parameters//> H
.//H I
Trigger//I P
,//P Q

startState//R \
,//\ ]
currentResult//^ k
.//k l
CurrentState//l x
,//x y
ToState	//z �
,
//� �
Name
//� �
)
//� �
;
//� �
NotifyOfTransition00 
(00 

parameters00 )
.00) *
Context00* 1
,001 2
transitionResult003 C
)00C D
;00D E
return22 
transitionResult22 #
;22# $
}33 	
}44 
}55 �9
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
return"" 
new"" !
StateTransitionResult"" 0
<""0 1
TState""1 7
,""7 8
TTrigger""9 A
>""A B
(""B C

parameters""C M
.""M N
Trigger""N U
,## 

startState##  
,$$ 
currentResult$$ #
==$$$ &
null$$' +
?$$, -

startState$$. 8
:$$9 :
currentResult$$; H
.$$H I
PreviousState$$I V
,%% 
currentResult%% #
==%%$ &
null%%' +
?%%, -

startState%%. 8
:%%9 :
currentResult%%; H
.%%H I
CurrentState%%I U
,&& 
currentResult&& #
==&&$ &
null&&' +
?&&, -
string&&. 4
.&&4 5
Empty&&5 :
:&&; <
currentResult&&= J
.&&J K
LastTransitionName&&K ]
,'' 
wasCancelled'' "
:''" #
true''$ (
)''( )
;'') *
}(( 
if** 
(** 
!** 
await** 
ConditionAsync** %
(**% &

parameters**& 0
.**0 1
Context**1 8
,**8 9

parameters**: D
.**D E
CancellationToken**E V
)**V W
.++ 
ConfigureAwait++ 
(++ %
continueOnCapturedContext++ 8
:++8 9
false++: ?
)++? @
)++@ A
{,, 
return-- 
new-- !
StateTransitionResult-- 0
<--0 1
TState--1 7
,--7 8
TTrigger--9 A
>--A B
(--B C

parameters--C M
.--M N
Trigger--N U
,.. 

startState..  
,// 
currentResult// #
==//$ &
null//' +
?//, -

startState//. 8
://9 :
currentResult//; H
.//H I
PreviousState//I V
,00 
currentResult00 #
==00$ &
null00' +
?00, -

startState00. 8
:009 :
currentResult00; H
.00H I
CurrentState00I U
,11 
currentResult11 #
==11$ &
null11' +
?11, -
string11. 4
.114 5
Empty115 :
:11; <
currentResult11= J
.11J K
LastTransitionName11K ]
,22 
conditionMet22 "
:22" #
false22$ )
,33 
wasCancelled33 "
:33" #

parameters33$ .
.33. /
CancellationToken33/ @
.33@ A#
IsCancellationRequested33A X
)33X Y
;33Y Z
}44 
StateMutator66 
(66 

parameters66 #
.66# $
Context66$ +
,66+ ,
ToState66- 4
)664 5
;665 6
var77 
transitionResult77  
=77! "
currentResult77# 0
==771 3
null774 8
?88 
new88 !
StateTransitionResult88 +
<88+ ,
TState88, 2
,882 3
TTrigger884 <
>88< =
(88= >

parameters88> H
.88H I
Trigger88I P
,88P Q

startState88R \
,88\ ]

startState88^ h
,88h i
ToState88j q
,88q r
Name88s w
)88w x
:99 
new99 !
StateTransitionResult99 +
<99+ ,
TState99, 2
,992 3
TTrigger994 <
>99< =
(99= >

parameters99> H
.99H I
Trigger99I P
,99P Q

startState99R \
,99\ ]
currentResult99^ k
.99k l
CurrentState99l x
,99x y
ToState	99z �
,
99� �
Name
99� �
)
99� �
;
99� �
NotifyOfTransition:: 
(:: 

parameters:: )
.::) *
Context::* 1
,::1 2
transitionResult::3 C
)::C D
;::D E
return<< 
transitionResult<< #
;<<# $
}== 	
}>> 
}?? �%
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
	protected44 
void44 
NotifyOfTransition44 )
(44) *
T44* +
context44, 3
,443 4!
StateTransitionResult445 J
<44J K
TState44K Q
,44Q R
TTrigger44S [
>44[ \
transitionResult44] m
)44m n
{55 	
OnTransitionedEvent66 
?66  
.66  !
Invoke66! '
(66' (
context66( /
,66/ 0
transitionResult661 A
)66A B
;66B C
}77 	
}88 
}99 �+
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
{%% 
if&& 
(&& 
currentResult&& !
!=&&" $
null&&% )
)&&) *
{'' 
return'' 
currentResult'' &
;''& '
}''( )
return)) 
new)) !
StateTransitionResult)) 0
<))0 1
TState))1 7
,))7 8
TTrigger))9 A
>))A B
())B C

parameters))C M
.))M N
Trigger))N U
,** 

startState**  
,++ 

startState++  
,,, 
toState,, 
,-- 
lastTransitionName-- (
:--( )
string--* 0
.--0 1
Empty--1 6
,.. 
conditionMet.. "
:.." #
false..$ )
)..) *
;..* +
}// 
StateMutator11 
.11 
Invoke11 
(11  

parameters11  *
.11* +
Context11+ 2
,112 3
toState114 ;
)11; <
;11< =
var22 
transitionResult22  
=22! "
currentResult22# 0
==221 3
null224 8
?33 
new33 !
StateTransitionResult33 +
<33+ ,
TState33, 2
,332 3
TTrigger334 <
>33< =
(33= >

parameters33> H
.33H I
Trigger33I P
,33P Q

startState33R \
,33\ ]

startState33^ h
,33h i
toState33j q
,33q r
Name33s w
)33w x
:44 
new44 !
StateTransitionResult44 +
<44+ ,
TState44, 2
,442 3
TTrigger444 <
>44< =
(44= >

parameters44> H
.44H I
Trigger44I P
,44P Q

startState44R \
,44\ ]
currentResult44^ k
.44k l
CurrentState44l x
,44x y
toState	44z �
,
44� �
Name
44� �
)
44� �
;
44� �
NotifyOfTransition55 
(55 

parameters55 )
.55) *
Context55* 1
,551 2
transitionResult553 C
)55C D
;55D E
return77 
transitionResult77 #
;77# $
}88 	
}99 
}:: �9
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
{'' 
if(( 
((( 
currentResult(( !
!=((" $
null((% )
)(() *
{)) 
return)) 
currentResult)) &
;))& '
}))( )
return++ 
new++ !
StateTransitionResult++ 0
<++0 1
TState++1 7
,++7 8
TTrigger++9 A
>++A B
(++B C

parameters++C M
.++M N
Trigger++N U
,,, 

startState,,  
,-- 

startState--  
,.. 

startState..  
,// 
lastTransitionName// (
://( )
string//* 0
.//0 1
Empty//1 6
,00 
wasCancelled00 "
:00" #
true00$ (
)00( )
;00) *
}11 
var33 
toState33 
=33 
await33 
StateFunctionAsync33  2
(332 3

parameters333 =
.33= >
Context33> E
,33E F

parameters33G Q
.33Q R
CancellationToken33R c
)33c d
.44 
ConfigureAwait44 
(44  %
continueOnCapturedContext44  9
:449 :
false44; @
)44@ A
;44A B
if77 
(77 
toState77 
.77 
	CompareTo77 !
(77! "

startState77" ,
)77, -
==77. 0
$num771 2
)772 3
{88 
return99 
new99 !
StateTransitionResult99 0
<990 1
TState991 7
,997 8
TTrigger999 A
>99A B
(99B C

parameters99C M
.99M N
Trigger99N U
,:: 

startState::  
,;; 
currentResult;; #
==;;$ &
null;;' +
?;;, -

startState;;. 8
:;;9 :
currentResult;;; H
.;;H I
PreviousState;;I V
,<< 
toState<< 
,== 
currentResult== #
====$ &
null==' +
?==, -
string==. 4
.==4 5
Empty==5 :
:==; <
currentResult=== J
.==J K
LastTransitionName==K ]
,>> 
conditionMet>> "
:>>" #
currentResult>>$ 1
!=>>2 4
null>>5 9
,?? 
wasCancelled?? "
:??" #

parameters??$ .
.??. /
CancellationToken??/ @
.??@ A#
IsCancellationRequested??A X
)??X Y
;??Y Z
}@@ 
StateMutatorBB 
(BB 

parametersBB #
.BB# $
ContextBB$ +
,BB+ ,
toStateBB- 4
)BB4 5
;BB5 6
varCC 
transitionResultCC  
=CC! "
currentResultCC# 0
==CC1 3
nullCC4 8
?DD 
newDD !
StateTransitionResultDD +
<DD+ ,
TStateDD, 2
,DD2 3
TTriggerDD4 <
>DD< =
(DD= >

parametersDD> H
.DDH I
TriggerDDI P
,DDP Q

startStateDDR \
,DD\ ]

startStateDD^ h
,DDh i
toStateDDj q
,DDq r
NameDDs w
)DDw x
:EE 
newEE !
StateTransitionResultEE +
<EE+ ,
TStateEE, 2
,EE2 3
TTriggerEE4 <
>EE< =
(EE= >

parametersEE> H
.EEH I
TriggerEEI P
,EEP Q

startStateEER \
,EE\ ]
currentResultEE^ k
.EEk l
CurrentStateEEl x
,EEx y
toState	EEz �
,
EE� �
Name
EE� �
)
EE� �
;
EE� �
NotifyOfTransitionFF 
(FF 

parametersFF )
.FF) *
ContextFF* 1
,FF1 2
transitionResultFF3 C
)FFC D
;FFD E
returnHH 
transitionResultHH #
;HH# $
}II 	
}JJ 
}KK �

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
>u v
{ 
	protected &
StateTransitionDynamicBase ,
(, -
Func- 1
<1 2
T2 3
,3 4
TState5 ;
>; <
stateAccessor= J
,J K
ActionL R
<R S
TS T
,T U
TStateV \
>\ ]
stateMutator^ j
,j k
TStatel r
	fromStates |
,| }
string	~ �
name
� �
,
� �
uint
� �
priority
� �
)
� �
: 
base 
( 
stateAccessor  
,  !
stateMutator" .
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
}	 

} 
} �-
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
: 	&
StateTransitionDynamicBase
 $
<$ %
T% &
,& '
TState( .
,. /
TTrigger0 8
>8 9
where 
TParam 
: 
class 
where 
TState 
: 
IComparable "
{ 
public 
Func 
< 
T 
, 
TParam 
, 
TState %
>% &
	StateFunc' 0
{1 2
get3 6
;6 7
}8 9
public /
#StateTransitionDynamicParameterized 2
(2 3
Func3 7
<7 8
T8 9
,9 :
TState; A
>A B
stateAccessorC P
,P Q
ActionR X
<X Y
TY Z
,Z [
TState\ b
>b c
stateMutatord p
,p q
TStater x
	fromState	y �
,
� �
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
� �
TState
� �
>
� �
	stateFunc
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
,. /
	fromState0 9
,9 :
name; ?
,? @
priorityA I
)I J
{ 	
	StateFunc 
= 
	stateFunc !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
	stateFuncL U
)U V
)V W
;W X
} 	
public 
override !
StateTransitionResult -
<- .
TState. 4
,4 5
TTrigger6 >
>> ?
Execute@ G
(G H
ExecutionParametersH [
<[ \
T\ ]
,] ^
TTrigger_ g
>g h

parametersi s
,s t"
StateTransitionResult	u �
<
� �
TState
� �
,
� �
TTrigger
� �
>
� �
currentResult
� �
=
� �
null
� �
)
� �
{ 	
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
(""# $

parameters""$ .
."". /
Context""/ 6
,""6 7

parameters""8 B
.""B C
Request""C J
as""K M
TParam""N T
)""T U
;""U V
var$$ 
transitioned$$ 
=$$ 
toState$$ &
.$$& '
	CompareTo$$' 0
($$0 1

startState$$1 ;
)$$; <
!=$$= ?
$num$$@ A
;$$A B
if&& 
(&& 
transitioned&& 
)&& 
{'' 
StateMutator'' 
('' 

parameters'' %
.''% &
Context''& -
,''- .
toState''/ 6
)''6 7
;''7 8
}''9 :
var)) 
transitionResult))  
=))! "
())# $
currentResult))$ 1
==))2 4
null))5 9
)))9 :
?** 
new** !
StateTransitionResult** +
<**+ ,
TState**, 2
,**2 3
TTrigger**4 <
>**< =
(**= >

parameters**> H
.**H I
Trigger**I P
,++ 

startState++  
,,, 

startState,,  
,-- 
toState-- 
,.. 
lastTransitionName.. (
:..( )
transitioned..* 6
?..7 8
Name..9 =
:..> ?
string..@ F
...F G
Empty..G L
,// 
conditionMet// "
://" #
transitioned//$ 0
)//0 1
:00 
new00 !
StateTransitionResult00 +
<00+ ,
TState00, 2
,002 3
TTrigger004 <
>00< =
(00= >

parameters00> H
.00H I
Trigger00I P
,11 

startState11  
,22 
currentResult22 #
.22# $
CurrentState22$ 0
,33 
toState33 
,44 
lastTransitionName44 (
:44( )
transitioned44* 6
?447 8
Name449 =
:44> ?
string44@ F
.44F G
Empty44G L
,55 
conditionMet55 "
:55" #
transitioned55$ 0
)550 1
;551 2
if77 
(77 
transitioned77 
)77 
{88 
NotifyOfTransition88  
(88  !

parameters88! +
.88+ ,
Context88, 3
,883 4
transitionResult885 E
)88E F
;88F G
}88H I
return:: 
transitionResult:: #
;::# $
};; 	
}<< 
}== �9
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
{$$ 	
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
,77A B

parameters77C M
.77M N
Request77N U
as77V X
TParam77Y _
,77_ `

parameters77a k
.77k l
CancellationToken77l }
)77} ~
.88 
ConfigureAwait88 
(88  %
continueOnCapturedContext88  9
:889 :
false88; @
)88@ A
;88A B
var:: 
wasSuccessful:: 
=:: 
false::  %
;::% &
if;; 
(;; 
toState;; 
.;; 
	CompareTo;; !
(;;! "

startState;;" ,
);;, -
!=;;. 0
$num;;1 2
);;2 3
{<< 
StateMutator== 
(== 

parameters== '
.==' (
Context==( /
,==/ 0
toState==1 8
)==8 9
;==9 :
wasSuccessful>> 
=>> 
true>>  $
;>>$ %
}?? 
varAA 
transitionResultAA  
=AA! "
currentResultAA# 0
==AA1 3
nullAA4 8
?BB 
newBB !
StateTransitionResultBB +
<BB+ ,
TStateBB, 2
,BB2 3
TTriggerBB4 <
>BB< =
(BB= >

parametersBB> H
.BBH I
TriggerBBI P
,CC 

startStateCC  
,DD 

startStateDD  
,EE 
toStateEE 
,FF 
lastTransitionNameFF (
:FF( )
wasSuccessfulFF* 7
?FF8 9
NameFF: >
:FF? @
stringFFA G
.FFG H
EmptyFFH M
,GG 
conditionMetGG "
:GG" #
wasSuccessfulGG$ 1
,HH 
wasCancelledHH "
:HH" #
!HH$ %
wasSuccessfulHH% 2
&&HH3 5

parametersHH6 @
.HH@ A
CancellationTokenHHA R
.HHR S#
IsCancellationRequestedHHS j
)HHj k
:II 
newII !
StateTransitionResultII +
<II+ ,
TStateII, 2
,II2 3
TTriggerII4 <
>II< =
(II= >

parametersII> H
.IIH I
TriggerIII P
,IIP Q

startStateIIR \
,II\ ]
currentResultII^ k
.IIk l
CurrentStateIIl x
,IIx y
toState	IIz �
,
II� �
Name
II� �
)
II� �
;
II� �
ifKK 
(KK 
wasSuccessfulKK 
)KK 
{LL 
NotifyOfTransitionLL  
(LL  !

parametersLL! +
.LL+ ,
ContextLL, 3
,LL3 4
transitionResultLL5 E
)LLE F
;LLF G
}LLH I
returnNN 
transitionResultNN #
;NN# $
}OO 	
}PP 
}QQ �f
XC:\Users\Scott\Source\Repos\NStateManager\Source\NStateManager\StateTransitionFactory.cs
	namespace 	
NStateManager
 
{ 
internal 
class "
StateTransitionFactory )
<) *
T* +
,+ ,
TState- 3
,3 4
TTrigger5 =
>= >
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
}@@ �1
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
if 
( 
! 
( 

parameters 
. 
Request $
is% '
TParam( .
typeSafeParam/ <
)< =
)= >
{ 
throw 
new 
ArgumentException )
() *
$"* ,
Expected a , 7
{7 8
typeof8 >
(> ?
TParam? E
)E F
.F G
NameG K
}K L'
 parameter, but received a L g
{g h

parametersh r
.r s
Requests z
.z {
GetType	{ �
(
� �
)
� �
.
� �
Name
� �
}
� �
.
� �
"
� �
)
� �
;
� �
}
� �
var 

startState 
= 
currentResult *
!=+ -
null. 2
?3 4
currentResult5 B
.B C
StartingStateC P
:Q R
StateAccessorS `
(` a

parametersa k
.k l
Contextl s
)s t
;t u
if!! 
(!! 
!!! 
	Condition!! 
(!! 

parameters!! %
.!!% &
Context!!& -
,!!- .
typeSafeParam!!/ <
)!!< =
)!!= >
{"" 
if## 
(## 
currentResult## !
!=##" $
null##% )
)##) *
{$$ 
return$$ 
currentResult$$ &
;$$& '
}$$( )
return&& 
new&& !
StateTransitionResult&& 0
<&&0 1
TState&&1 7
,&&7 8
TTrigger&&9 A
>&&A B
(&&B C

parameters&&C M
.&&M N
Trigger&&N U
,'' 

startState''  
,(( 

startState((  
,)) 

startState))  
,** 
lastTransitionName** (
:**( )
string*** 0
.**0 1
Empty**1 6
,++ 
conditionMet++ "
:++" #
false++$ )
)++) *
;++* +
},, 
StateMutator.. 
(.. 

parameters.. #
...# $
Context..$ +
,..+ ,
ToState..- 4
)..4 5
;..5 6
var// 
transitionResult//  
=//! "
currentResult//# 0
==//1 3
null//4 8
?00 
new00 !
StateTransitionResult00 +
<00+ ,
TState00, 2
,002 3
TTrigger004 <
>00< =
(00= >

parameters00> H
.00H I
Trigger00I P
,00P Q

startState00R \
,00\ ]

startState00^ h
,00h i
ToState00j q
,00q r
Name00s w
)00w x
:11 
new11 !
StateTransitionResult11 +
<11+ ,
TState11, 2
,112 3
TTrigger114 <
>11< =
(11= >

parameters11> H
.11H I
Trigger11I P
,11P Q

startState11R \
,11\ ]
currentResult11^ k
.11k l
CurrentState11l x
,11x y
ToState	11z �
,
11� �
Name
11� �
)
11� �
;
11� �
NotifyOfTransition22 
(22 

parameters22 )
.22) *
Context22* 1
,221 2
transitionResult223 C
)22C D
;22D E
return44 
transitionResult44 #
;44# $
}55 	
}66 
}77 �D
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
if   
(   

parameters   
.   
Request   "
==  # %
null  & *
)  * +
{!! 
throw!! 
new!! !
ArgumentNullException!! -
(!!- .
nameof!!. 4
(!!4 5

parameters!!5 ?
.!!? @
Request!!@ G
)!!G H
)!!H I
;!!I J
}!!K L
if$$ 
($$ 
!$$ 
($$ 

parameters$$ 
.$$ 
Request$$ $
is$$% '
TParam$$( .
typeSafeParam$$/ <
)$$< =
)$$= >
{%% 
throw%% 
new%% 
ArgumentException%% )
(%%) *
$"%%* ,
Expected a %%, 7
{%%7 8
typeof%%8 >
(%%> ?
TParam%%? E
)%%E F
.%%F G
Name%%G K
}%%K L'
 parameter, but received a %%L g
{%%g h

parameters%%h r
.%%r s
Request%%s z
.%%z {
GetType	%%{ �
(
%%� �
)
%%� �
.
%%� �
Name
%%� �
}
%%� �
.
%%� �
"
%%� �
)
%%� �
;
%%� �
}
%%� �
var'' 

startState'' 
='' 
currentResult'' *
!=''+ -
null''. 2
?''3 4
currentResult''5 B
.''B C
StartingState''C P
:''Q R
StateAccessor''S `
(''` a

parameters''a k
.''k l
Context''l s
)''s t
;''t u
if)) 
()) 

parameters)) 
.)) 
CancellationToken)) ,
.)), -#
IsCancellationRequested))- D
)))D E
{** 
if++ 
(++ 
currentResult++ !
!=++" $
null++% )
)++) *
{,, 
return,, 
currentResult,, &
;,,& '
},,( )
return.. 
new.. !
StateTransitionResult.. 0
<..0 1
TState..1 7
,..7 8
TTrigger..9 A
>..A B
(..B C

parameters..C M
...M N
Trigger..N U
,// 

startState//  
,00 

startState00  
,11 

startState11  
,22 
lastTransitionName22 (
:22( )
string22* 0
.220 1
Empty221 6
,33 
conditionMet33 "
:33" #
false33$ )
,44 
wasCancelled44 "
:44" #
true44$ (
)44( )
;44) *
}55 
if77 
(77 
!77 
await77 
ConditionAsync77 %
(77% &

parameters77& 0
.770 1
Context771 8
,778 9
typeSafeParam77: G
,77G H

parameters77I S
.77S T
CancellationToken77T e
)77e f
.88 
ConfigureAwait88 
(88 %
continueOnCapturedContext88 8
:888 9
false88: ?
)88? @
)88@ A
{99 
return:: 
new:: !
StateTransitionResult:: 0
<::0 1
TState::1 7
,::7 8
TTrigger::9 A
>::A B
(::B C

parameters::C M
.::M N
Trigger::N U
,;; 

startState;;  
,<< 
currentResult<< #
==<<$ &
null<<' +
?<<, -

startState<<. 8
:<<9 :
currentResult<<; H
.<<H I
PreviousState<<I V
,== 
currentResult== #
====$ &
null==' +
?==, -

startState==. 8
:==9 :
currentResult==; H
.==H I
CurrentState==I U
,>> 
lastTransitionName>> (
:>>( )
currentResult>>* 7
==>>8 :
null>>; ?
?>>@ A
string>>B H
.>>H I
Empty>>I N
:>>O P
currentResult>>Q ^
.>>^ _
LastTransitionName>>_ q
,?? 
conditionMet?? "
:??" #
currentResult??$ 1
!=??2 4
null??5 9
,@@ 
wasCancelled@@ "
:@@" #

parameters@@$ .
.@@. /
CancellationToken@@/ @
.@@@ A#
IsCancellationRequested@@A X
)@@X Y
;@@Y Z
}AA 
StateMutatorCC 
(CC 

parametersCC #
.CC# $
ContextCC$ +
,CC+ ,
ToStateCC- 4
)CC4 5
;CC5 6
varDD 
transitionResultDD  
=DD! "
currentResultDD# 0
==DD1 3
nullDD4 8
?EE 
newEE !
StateTransitionResultEE +
<EE+ ,
TStateEE, 2
,EE2 3
TTriggerEE4 <
>EE< =
(EE= >

parametersEE> H
.EEH I
TriggerEEI P
,EEP Q

startStateEER \
,EE\ ]

startStateEE^ h
,EEh i
ToStateEEj q
,EEq r
NameEEs w
)EEw x
:FF 
newFF !
StateTransitionResultFF +
<FF+ ,
TStateFF, 2
,FF2 3
TTriggerFF4 <
>FF< =
(FF= >

parametersFF> H
.FFH I
TriggerFFI P
,FFP Q

startStateFFR \
,FF\ ]
currentResultFF^ k
.FFk l
CurrentStateFFl x
,FFx y
ToState	FFz �
,
FF� �
Name
FF� �
)
FF� �
;
FF� �
NotifyOfTransitionGG 
(GG 

parametersGG )
.GG) *
ContextGG* 1
,GG1 2
transitionResultGG3 C
)GGC D
;GGD E
returnII 
transitionResultII #
;II# $
}JJ 	
}KK 
}LL �
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
Action 
. 
Invoke 
( 

parameters $
.$ %
Context% ,
), -
;- .
} 	
} 
} �
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