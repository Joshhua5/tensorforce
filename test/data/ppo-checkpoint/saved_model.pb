д
э
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
h
Any	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
T
CheckNumerics
tensor"T
output"T"
Ttype:
2"
messagestring
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
К
If
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
Г
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8ть
Ь
:agent/policy/action_distribution/action_values/linear/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:agent/policy/action_distribution/action_values/linear/bias
Х
Nagent/policy/action_distribution/action_values/linear/bias/Read/ReadVariableOpReadVariableOp:agent/policy/action_distribution/action_values/linear/bias*
_output_shapes
:*
dtype0
ж
=agent/policy/action_distribution/action_values/linear/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*N
shared_name?=agent/policy/action_distribution/action_values/linear/weights
Я
Qagent/policy/action_distribution/action_values/linear/weights/Read/ReadVariableOpReadVariableOp=agent/policy/action_distribution/action_values/linear/weights*
_output_shapes

:@*
dtype0

 agent/policy/network/dense0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" agent/policy/network/dense0/bias

4agent/policy/network/dense0/bias/Read/ReadVariableOpReadVariableOp agent/policy/network/dense0/bias*
_output_shapes
:@*
dtype0
Ђ
#agent/policy/network/dense0/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*4
shared_name%#agent/policy/network/dense0/weights

7agent/policy/network/dense0/weights/Read/ReadVariableOpReadVariableOp#agent/policy/network/dense0/weights*
_output_shapes

:@*
dtype0

 agent/policy/network/dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" agent/policy/network/dense1/bias

4agent/policy/network/dense1/bias/Read/ReadVariableOpReadVariableOp agent/policy/network/dense1/bias*
_output_shapes
:@*
dtype0
Ђ
#agent/policy/network/dense1/weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*4
shared_name%#agent/policy/network/dense1/weights

7agent/policy/network/dense1/weights/Read/ReadVariableOpReadVariableOp#agent/policy/network/dense1/weights*
_output_shapes

:@@*
dtype0
l
save_counterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namesave_counter
e
 save_counter/Read/ReadVariableOpReadVariableOpsave_counter*
_output_shapes
: *
dtype0	

NoOpNoOp
Ю

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*

valueџ	Bќ	 Bѕ	
Я
@<agent/policy/action_distribution/action_values/linear/bias:0
C?agent/policy/action_distribution/action_values/linear/weights:0
&"agent/policy/network/dense0/bias:0
)%agent/policy/network/dense0/weights:0
&"agent/policy/network/dense1/bias:0
)%agent/policy/network/dense1/weights:0
save_counter

signatures
­Њ
VARIABLE_VALUE:agent/policy/action_distribution/action_values/linear/bias\agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sbias:0/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUE=agent/policy/action_distribution/action_values/linear/weights_agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sweights:0/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE agent/policy/network/dense0/biasAagent.Spolicy.Snetwork.Sdense0.Sbias:0/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE#agent/policy/network/dense0/weightsDagent.Spolicy.Snetwork.Sdense0.Sweights:0/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE agent/policy/network/dense1/biasAagent.Spolicy.Snetwork.Sdense1.Sbias:0/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE#agent/policy/network/dense1/weightsDagent.Spolicy.Snetwork.Sdense1.Sweights:0/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEsave_counter'save_counter/.ATTRIBUTES/VARIABLE_VALUE
 
y
serving_default_args_0Placeholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
^
serving_default_deterministicPlaceholder*
_output_shapes
: *
dtype0
*
shape: 
w
serving_default_maskPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0
*
shape:џџџџџџџџџ
ќ
StatefulPartitionedCallStatefulPartitionedCallserving_default_args_0serving_default_deterministicserving_default_mask#agent/policy/network/dense0/weights agent/policy/network/dense0/bias#agent/policy/network/dense1/weights agent/policy/network/dense1/bias=agent/policy/action_distribution/action_values/linear/weights:agent/policy/action_distribution/action_values/linear/bias*
Tin
2	

*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_195425
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ш
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameNagent/policy/action_distribution/action_values/linear/bias/Read/ReadVariableOpQagent/policy/action_distribution/action_values/linear/weights/Read/ReadVariableOp4agent/policy/network/dense0/bias/Read/ReadVariableOp7agent/policy/network/dense0/weights/Read/ReadVariableOp4agent/policy/network/dense1/bias/Read/ReadVariableOp7agent/policy/network/dense1/weights/Read/ReadVariableOp save_counter/Read/ReadVariableOpConst*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_196007
З
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename:agent/policy/action_distribution/action_values/linear/bias=agent/policy/action_distribution/action_values/linear/weights agent/policy/network/dense0/bias#agent/policy/network/dense0/weights agent/policy/network/dense1/bias#agent/policy/network/dense1/weightssave_counter*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_196038дН
Ч&
С
%action_distribution_cond_false_195323(
$action_distribution_cond_placeholder)
%action_distribution_cond_shape_logits,
(action_distribution_cond_add_temperature:
6action_distribution_cond_add_action_distribution_const/
+action_distribution_cond_less_probabilities%
!action_distribution_cond_identity	
action_distribution/cond/ShapeShape%action_distribution_cond_shape_logits*
T0*
_output_shapes
:2 
action_distribution/cond/Shape
#action_distribution/cond/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *џџџ2%
#action_distribution/cond/Fill/valueЯ
action_distribution/cond/FillFill'action_distribution/cond/Shape:output:0,action_distribution/cond/Fill/value:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/FillШ
action_distribution/cond/addAddV2(action_distribution_cond_add_temperature6action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2
action_distribution/cond/addЪ
 action_distribution/cond/truedivRealDiv%action_distribution_cond_shape_logits action_distribution/cond/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 action_distribution/cond/truedivн
action_distribution/cond/LessLess+action_distribution_cond_less_probabilities6action_distribution_cond_add_action_distribution_const*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Lessѕ
!action_distribution/cond/SelectV2SelectV2!action_distribution/cond/Less:z:0&action_distribution/cond/Fill:output:0$action_distribution/cond/truediv:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/SelectV2
action_distribution/cond/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
action_distribution/cond/Const
 action_distribution/cond/Shape_1Shape*action_distribution/cond/SelectV2:output:0*
T0*
_output_shapes
:2"
 action_distribution/cond/Shape_1Х
action_distribution/cond/subSub'action_distribution/cond/Const:output:06action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2
action_distribution/cond/subщ
5action_distribution/cond/random_uniform/RandomUniformRandomUniform)action_distribution/cond/Shape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype027
5action_distribution/cond/random_uniform/RandomUniformм
+action_distribution/cond/random_uniform/subSub action_distribution/cond/sub:z:06action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2-
+action_distribution/cond/random_uniform/sub
+action_distribution/cond/random_uniform/mulMul>action_distribution/cond/random_uniform/RandomUniform:output:0/action_distribution/cond/random_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+action_distribution/cond/random_uniform/mulє
'action_distribution/cond/random_uniformAdd/action_distribution/cond/random_uniform/mul:z:06action_distribution_cond_add_action_distribution_const*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/cond/random_uniformЂ
action_distribution/cond/LogLog+action_distribution/cond/random_uniform:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Log
action_distribution/cond/NegNeg action_distribution/cond/Log:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Neg
action_distribution/cond/Log_1Log action_distribution/cond/Neg:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/Log_1
action_distribution/cond/Neg_1Neg"action_distribution/cond/Log_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/Neg_1Ы
action_distribution/cond/add_1AddV2*action_distribution/cond/SelectV2:output:0"action_distribution/cond/Neg_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/add_1Ё
)action_distribution/cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2+
)action_distribution/cond/ArgMax/dimensionв
action_distribution/cond/ArgMaxArgMax"action_distribution/cond/add_1:z:02action_distribution/cond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2!
action_distribution/cond/ArgMaxЊ
!action_distribution/cond/IdentityIdentity(action_distribution/cond/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity"O
!action_distribution_cond_identity*action_distribution/cond/Identity:output:0*P
_input_shapes?
=:џџџџџџџџџ:џџџџџџџџџ: : :џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
ј
А
3agent_assert_equal_5_Assert_AssertGuard_true_195581M
Iagent_assert_equal_5_assert_assertguard_identity_agent_assert_equal_5_all
7
3agent_assert_equal_5_assert_assertguard_placeholder
9
5agent_assert_equal_5_assert_assertguard_placeholder_1
6
2agent_assert_equal_5_assert_assertguard_identity_1
z
,agent/assert_equal_5/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_5/Assert/AssertGuard/NoOp
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_5_assert_assertguard_identity_agent_assert_equal_5_all-^agent/assert_equal_5/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identityа
2agent/assert_equal_5/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_5/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_5/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_5_assert_assertguard_identity_1;agent/assert_equal_5/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ѓ
4agent_assert_equal_3_Assert_AssertGuard_false_195547K
Gagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all
?
;agent_assert_equal_3_assert_assertguard_assert_agent_cast_2	A
=agent_assert_equal_3_assert_assertguard_assert_agent_concat_1	6
2agent_assert_equal_3_assert_assertguard_identity_1
Ђ.agent/assert_equal_3/Assert/AssertGuard/Assertу
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*E
value<B: B4Agent.independent_act: invalid shape for mask input.27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_1Ф
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_2:0) = 27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_2Ц
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*(
valueB By (agent/concat_1:0) = 27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_4ж
.agent/assert_equal_3/Assert/AssertGuard/AssertAssertGagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all>agent/assert_equal_3/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_3/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_3/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_equal_3_assert_assertguard_assert_agent_cast_2>agent/assert_equal_3/Assert/AssertGuard/Assert/data_4:output:0=agent_assert_equal_3_assert_assertguard_assert_agent_concat_1*
T

2		*
_output_shapes
 20
.agent/assert_equal_3/Assert/AssertGuard/Assert
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all/^agent/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identity
2agent/assert_equal_3/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_3/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_3/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_3_assert_assertguard_identity_1;agent/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::2`
.agent/assert_equal_3/Assert/AssertGuard/Assert.agent/assert_equal_3/Assert/AssertGuard/Assert: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
ж
,
__inference_past_horizon_742
identity	
policy/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_past_horizon_7392
policy/PartitionedCallb
IdentityIdentitypolicy/PartitionedCall:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
н6
и
__inference_parametrize_1021
x
mask

action_distribution_988
action_distribution_990
identity

identity_1

identity_2

identity_3Ђ+action_distribution/StatefulPartitionedCall{
action_distribution/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Н752
action_distribution/Const
action_distribution/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *U]С2
action_distribution/Const_1
action_distribution/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *r1?2
action_distribution/Const_2
+action_distribution/StatefulPartitionedCallStatefulPartitionedCallxaction_distribution_988action_distribution_990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9872-
+action_distribution/StatefulPartitionedCall
!action_distribution/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2#
!action_distribution/Reshape/shapeй
action_distribution/ReshapeReshape4action_distribution/StatefulPartitionedCall:output:0*action_distribution/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/ReshapeС
9action_distribution/ReduceLogSumExp/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2;
9action_distribution/ReduceLogSumExp/Max/reduction_indices
'action_distribution/ReduceLogSumExp/MaxMax$action_distribution/Reshape:output:0Baction_distribution/ReduceLogSumExp/Max/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(2)
'action_distribution/ReduceLogSumExp/MaxЬ
,action_distribution/ReduceLogSumExp/IsFiniteIsFinite0action_distribution/ReduceLogSumExp/Max:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,action_distribution/ReduceLogSumExp/IsFiniteЯ
-action_distribution/ReduceLogSumExp/ZerosLike	ZerosLike0action_distribution/ReduceLogSumExp/Max:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-action_distribution/ReduceLogSumExp/ZerosLikeЋ
*action_distribution/ReduceLogSumExp/SelectSelect0action_distribution/ReduceLogSumExp/IsFinite:y:00action_distribution/ReduceLogSumExp/Max:output:01action_distribution/ReduceLogSumExp/ZerosLike:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2,
*action_distribution/ReduceLogSumExp/Selectл
0action_distribution/ReduceLogSumExp/StopGradientStopGradient3action_distribution/ReduceLogSumExp/Select:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
0action_distribution/ReduceLogSumExp/StopGradientь
'action_distribution/ReduceLogSumExp/SubSub$action_distribution/Reshape:output:09action_distribution/ReduceLogSumExp/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/SubИ
'action_distribution/ReduceLogSumExp/ExpExp+action_distribution/ReduceLogSumExp/Sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/ExpС
9action_distribution/ReduceLogSumExp/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2;
9action_distribution/ReduceLogSumExp/Sum/reduction_indicesј
'action_distribution/ReduceLogSumExp/SumSum+action_distribution/ReduceLogSumExp/Exp:y:0Baction_distribution/ReduceLogSumExp/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/SumЙ
'action_distribution/ReduceLogSumExp/LogLog0action_distribution/ReduceLogSumExp/Sum:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/LogБ
)action_distribution/ReduceLogSumExp/ShapeShape+action_distribution/ReduceLogSumExp/Log:y:0*
T0*
_output_shapes
:2+
)action_distribution/ReduceLogSumExp/Shape
+action_distribution/ReduceLogSumExp/ReshapeReshape9action_distribution/ReduceLogSumExp/StopGradient:output:02action_distribution/ReduceLogSumExp/Shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2-
+action_distribution/ReduceLogSumExp/Reshapeф
#action_distribution/ReduceLogSumExpAddV2+action_distribution/ReduceLogSumExp/Log:y:04action_distribution/ReduceLogSumExp/Reshape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2%
#action_distribution/ReduceLogSumExp
action_distribution/ShapeShape$action_distribution/Reshape:output:0*
T0*
_output_shapes
:2
action_distribution/Shape
action_distribution/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *џџџ2 
action_distribution/Fill/valueЛ
action_distribution/FillFill"action_distribution/Shape:output:0'action_distribution/Fill/value:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/FillЩ
action_distribution/SelectV2SelectV2mask$action_distribution/Reshape:output:0!action_distribution/Fill:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/SelectV2Э
action_distribution/SelectV2_1SelectV2mask$action_distribution/Reshape:output:0!action_distribution/Fill:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/SelectV2_1 
action_distribution/SoftmaxSoftmax'action_distribution/SelectV2_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/SoftmaxИ
action_distribution/addAddV2%action_distribution/Softmax:softmax:0"action_distribution/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/add
action_distribution/LogLogaction_distribution/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/LogЇ
IdentityIdentity%action_distribution/Softmax:softmax:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЁ

Identity_1Identityaction_distribution/Log:y:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ћ

Identity_2Identity%action_distribution/SelectV2:output:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2Љ

Identity_3Identity'action_distribution/ReduceLogSumExp:z:0,^action_distribution/StatefulPartitionedCall*
T0*#
_output_shapes
:џџџџџџџџџ2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*A
_input_shapes0
.:џџџџџџџџџ@:џџџџџџџџџ::2Z
+action_distribution/StatefulPartitionedCall+action_distribution/StatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask

/
__inference_past_horizon_195633
identity	`
network/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
network/Constl
network/stackPacknetwork/Const:output:0*
N*
T0	*
_output_shapes
:2
network/stack
network/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
network/Max/reduction_indices
network/MaxMaxnetwork/stack:output:0&network/Max/reduction_indices:output:0*
T0	*
_output_shapes
: 2
network/MaxW
IdentityIdentitynetwork/Max:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
й	
Т
6agent_assert_less_equal_Assert_AssertGuard_true_195101S
Oagent_assert_less_equal_assert_assertguard_identity_agent_assert_less_equal_all
:
6agent_assert_less_equal_assert_assertguard_placeholder<
8agent_assert_less_equal_assert_assertguard_placeholder_19
5agent_assert_less_equal_assert_assertguard_identity_1

/agent/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 21
/agent/assert_less_equal/Assert/AssertGuard/NoOp
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentityOagent_assert_less_equal_assert_assertguard_identity_agent_assert_less_equal_all0^agent/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identityй
5agent/assert_less_equal/Assert/AssertGuard/Identity_1Identity<agent/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 27
5agent/assert_less_equal/Assert/AssertGuard/Identity_1"w
5agent_assert_less_equal_assert_assertguard_identity_1>agent/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:
ю6
р
__inference_parametrize_195830
x
mask

action_distribution_195797
action_distribution_195799
identity

identity_1

identity_2

identity_3Ђ+action_distribution/StatefulPartitionedCall{
action_distribution/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Н752
action_distribution/Const
action_distribution/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *U]С2
action_distribution/Const_1
action_distribution/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *r1?2
action_distribution/Const_2
+action_distribution/StatefulPartitionedCallStatefulPartitionedCallxaction_distribution_195797action_distribution_195799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957962-
+action_distribution/StatefulPartitionedCall
!action_distribution/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2#
!action_distribution/Reshape/shapeй
action_distribution/ReshapeReshape4action_distribution/StatefulPartitionedCall:output:0*action_distribution/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/ReshapeС
9action_distribution/ReduceLogSumExp/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2;
9action_distribution/ReduceLogSumExp/Max/reduction_indices
'action_distribution/ReduceLogSumExp/MaxMax$action_distribution/Reshape:output:0Baction_distribution/ReduceLogSumExp/Max/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
	keep_dims(2)
'action_distribution/ReduceLogSumExp/MaxЬ
,action_distribution/ReduceLogSumExp/IsFiniteIsFinite0action_distribution/ReduceLogSumExp/Max:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2.
,action_distribution/ReduceLogSumExp/IsFiniteЯ
-action_distribution/ReduceLogSumExp/ZerosLike	ZerosLike0action_distribution/ReduceLogSumExp/Max:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2/
-action_distribution/ReduceLogSumExp/ZerosLikeЋ
*action_distribution/ReduceLogSumExp/SelectSelect0action_distribution/ReduceLogSumExp/IsFinite:y:00action_distribution/ReduceLogSumExp/Max:output:01action_distribution/ReduceLogSumExp/ZerosLike:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2,
*action_distribution/ReduceLogSumExp/Selectл
0action_distribution/ReduceLogSumExp/StopGradientStopGradient3action_distribution/ReduceLogSumExp/Select:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
0action_distribution/ReduceLogSumExp/StopGradientь
'action_distribution/ReduceLogSumExp/SubSub$action_distribution/Reshape:output:09action_distribution/ReduceLogSumExp/StopGradient:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/SubИ
'action_distribution/ReduceLogSumExp/ExpExp+action_distribution/ReduceLogSumExp/Sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/ExpС
9action_distribution/ReduceLogSumExp/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2;
9action_distribution/ReduceLogSumExp/Sum/reduction_indicesј
'action_distribution/ReduceLogSumExp/SumSum+action_distribution/ReduceLogSumExp/Exp:y:0Baction_distribution/ReduceLogSumExp/Sum/reduction_indices:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/SumЙ
'action_distribution/ReduceLogSumExp/LogLog0action_distribution/ReduceLogSumExp/Sum:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2)
'action_distribution/ReduceLogSumExp/LogБ
)action_distribution/ReduceLogSumExp/ShapeShape+action_distribution/ReduceLogSumExp/Log:y:0*
T0*
_output_shapes
:2+
)action_distribution/ReduceLogSumExp/Shape
+action_distribution/ReduceLogSumExp/ReshapeReshape9action_distribution/ReduceLogSumExp/StopGradient:output:02action_distribution/ReduceLogSumExp/Shape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2-
+action_distribution/ReduceLogSumExp/Reshapeф
#action_distribution/ReduceLogSumExpAddV2+action_distribution/ReduceLogSumExp/Log:y:04action_distribution/ReduceLogSumExp/Reshape:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2%
#action_distribution/ReduceLogSumExp
action_distribution/ShapeShape$action_distribution/Reshape:output:0*
T0*
_output_shapes
:2
action_distribution/Shape
action_distribution/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *џџџ2 
action_distribution/Fill/valueЛ
action_distribution/FillFill"action_distribution/Shape:output:0'action_distribution/Fill/value:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/FillЩ
action_distribution/SelectV2SelectV2mask$action_distribution/Reshape:output:0!action_distribution/Fill:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/SelectV2Э
action_distribution/SelectV2_1SelectV2mask$action_distribution/Reshape:output:0!action_distribution/Fill:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/SelectV2_1 
action_distribution/SoftmaxSoftmax'action_distribution/SelectV2_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/SoftmaxИ
action_distribution/addAddV2%action_distribution/Softmax:softmax:0"action_distribution/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/add
action_distribution/LogLogaction_distribution/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/LogЇ
IdentityIdentity%action_distribution/Softmax:softmax:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЁ

Identity_1Identityaction_distribution/Log:y:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_1Ћ

Identity_2Identity%action_distribution/SelectV2:output:0,^action_distribution/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity_2Љ

Identity_3Identity'action_distribution/ReduceLogSumExp:z:0,^action_distribution/StatefulPartitionedCall*
T0*#
_output_shapes
:џџџџџџџџџ2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*A
_input_shapes0
.:џџџџџџџџџ@:џџџџџџџџџ::2Z
+action_distribution/StatefulPartitionedCall+action_distribution/StatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask
т
/
__inference_past_horizon_195636
identity	
baseline/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_past_horizon_1956332
baseline/PartitionedCalld
IdentityIdentity!baseline/PartitionedCall:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 

ё
4agent_assert_equal_1_Assert_AssertGuard_false_195044K
Gagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all
?
;agent_assert_equal_1_assert_assertguard_assert_agent_cast_1	?
;agent_assert_equal_1_assert_assertguard_assert_agent_concat	6
2agent_assert_equal_1_assert_assertguard_identity_1
Ђ.agent/assert_equal_1/Assert/AssertGuard/Assertх
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*G
value>B< B6Agent.independent_act: invalid shape for  state input.27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Ф
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_1:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Ф
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*&
valueB By (agent/concat:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4д
.agent/assert_equal_1/Assert/AssertGuard/AssertAssertGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all>agent/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_equal_1_assert_assertguard_assert_agent_cast_1>agent/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0;agent_assert_equal_1_assert_assertguard_assert_agent_concat*
T

2		*
_output_shapes
 20
.agent/assert_equal_1/Assert/AssertGuard/Assert
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identity
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::2`
.agent/assert_equal_1/Assert/AssertGuard/Assert.agent/assert_equal_1/Assert/AssertGuard/Assert: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:

/
__inference_apply_195749
x
identity_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
а
Х
__inference_apply_940
x)
%dense1_matmul_readvariableop_resource*
&dense1_biasadd_readvariableop_resource
identityЂdense1/BiasAdd/ReadVariableOpЂdense1/MatMul/ReadVariableOpЂ
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense1/MatMul/ReadVariableOp
dense1/MatMulMatMulx$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/MatMulЁ
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense1/BiasAdd/ReadVariableOp
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/BiasAddШ
dense1/PartitionedCallPartitionedCalldense1/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9372
dense1/PartitionedCallВ
IdentityIdentitydense1/PartitionedCall:output:0^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
Ћ=

__inference_core_act_195943

args_0
mask

parallel	
deterministic

agent_195927
agent_195929
agent_195931
agent_195933
agent_195935
agent_195937
identity	Ђagent/StatefulPartitionedCallЂ'agent/assert_equal_1/Assert/AssertGuard_
agent/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
agent/Const`
agent/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/Const_1
agent/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_past_horizon_1956242
agent/PartitionedCall
agent/PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_past_horizon_1956362
agent/PartitionedCall_1
agent/MaximumMaximumagent/PartitionedCall:output:0 agent/PartitionedCall_1:output:0*
T0	*
_output_shapes
: 2
agent/Maximum
agent/assert_equal_1/EqualEqualagent/Maximum:z:0agent/Const_1:output:0*
T0	*
_output_shapes
: 2
agent/assert_equal_1/Equalx
agent/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/assert_equal_1/Rank
 agent/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 agent/assert_equal_1/range/start
 agent/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 agent/assert_equal_1/range/deltaе
agent/assert_equal_1/rangeRange)agent/assert_equal_1/range/start:output:0"agent/assert_equal_1/Rank:output:0)agent/assert_equal_1/range/delta:output:0*
_output_shapes
: 2
agent/assert_equal_1/range
agent/assert_equal_1/AllAllagent/assert_equal_1/Equal:z:0#agent/assert_equal_1/range:output:0*
_output_shapes
: 2
agent/assert_equal_1/AllС
!agent/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Policy/baseline on-policy horizon currently not supported.2#
!agent/assert_equal_1/Assert/ConstЖ
#agent/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_1/Assert/Const_1Ё
#agent/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*'
valueB Bx (agent/Maximum:0) = 2%
#agent/assert_equal_1/Assert/Const_2Ё
#agent/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_1:0) = 2%
#agent/assert_equal_1/Assert/Const_3ј
'agent/assert_equal_1/Assert/AssertGuardIf!agent/assert_equal_1/All:output:0!agent/assert_equal_1/All:output:0agent/Maximum:z:0agent/Const_1:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_1_Assert_AssertGuard_false_195650*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_1_Assert_AssertGuard_true_1956492)
'agent/assert_equal_1/Assert/AssertGuardУ
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityь
agent/PartitionedCall_2PartitionedCallargs_0deterministic1^agent/assert_equal_1/Assert/AssertGuard/Identity*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1956892
agent/PartitionedCall_2j
agent/ShapeShape agent/PartitionedCall_2:output:0*
T0*
_output_shapes
:2
agent/ShapeГ
agent/strided_slice/stackConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2
agent/strided_slice/stackЗ
agent/strided_slice/stack_1Const1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_1З
agent/strided_slice/stack_2Const1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_2
agent/strided_sliceStridedSliceagent/Shape:output:0"agent/strided_slice/stack:output:0$agent/strided_slice/stack_1:output:0$agent/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
agent/strided_slicen

agent/CastCastagent/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2

agent/Cast
agent/range/startConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/range/start
agent/range/deltaConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2
agent/range/delta
agent/rangeRangeagent/range/start:output:0agent/Cast:y:0agent/range/delta:output:0*

Tidx0	*#
_output_shapes
:џџџџџџџџџ2
agent/range
agent/ones/Less/yConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rш2
agent/ones/Less/yw
agent/ones/LessLessagent/Cast:y:0agent/ones/Less/y:output:0*
T0	*
_output_shapes
: 2
agent/ones/Lessj
agent/ones/CastCastagent/Cast:y:0*

DstT0*

SrcT0	*
_output_shapes
: 2
agent/ones/Castq
agent/ones/packedPackagent/ones/Cast:y:0*
N*
T0*
_output_shapes
:2
agent/ones/packed
agent/ones/ConstConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2
agent/ones/Const

agent/onesFillagent/ones/packed:output:0agent/ones/Const:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2

agent/ones
agent/stackPackagent/range:output:0agent/ones:output:0*
N*
T0	*'
_output_shapes
:џџџџџџџџџ*

axis2
agent/stackс
agent/StatefulPartitionedCallStatefulPartitionedCall agent/PartitionedCall_2:output:0agent/stack:output:0maskdeterministicagent_195927agent_195929agent_195931agent_195933agent_195935agent_195937*
Tin
2
	

*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_act_1959262
agent/StatefulPartitionedCall
agent/zeros_like	ZerosLike&agent/StatefulPartitionedCall:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
agent/zeros_like
	agent/AddAdd&agent/StatefulPartitionedCall:output:0agent/zeros_like:y:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
	agent/AddЇ
IdentityIdentityagent/Add:z:0^agent/StatefulPartitionedCall(^agent/assert_equal_1/Assert/AssertGuard*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: ::::::2>
agent/StatefulPartitionedCallagent/StatefulPartitionedCall2R
'agent/assert_equal_1/Assert/AssertGuard'agent/assert_equal_1/Assert/AssertGuard:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
parallel:EA

_output_shapes
: 
'
_user_specified_namedeterministic

,
__inference_past_horizon_739
identity	`
network/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
network/Constl
network/stackPacknetwork/Const:output:0*
N*
T0	*
_output_shapes
:2
network/stack
network/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
network/Max/reduction_indices
network/MaxMaxnetwork/stack:output:0&network/Max/reduction_indices:output:0*
T0	*
_output_shapes
: 2
network/MaxW
IdentityIdentitynetwork/Max:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 

ѓ
4agent_assert_equal_1_Assert_AssertGuard_false_195218K
Gagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all
@
<agent_assert_equal_1_assert_assertguard_assert_agent_maximum	@
<agent_assert_equal_1_assert_assertguard_assert_agent_const_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
Ђ.agent/assert_equal_1/Assert/AssertGuard/Assertщ
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Policy/baseline on-policy horizon currently not supported.27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Х
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*'
valueB Bx (agent/Maximum:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Х
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_1:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4ж
.agent/assert_equal_1/Assert/AssertGuard/AssertAssertGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all>agent/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0<agent_assert_equal_1_assert_assertguard_assert_agent_maximum>agent/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0<agent_assert_equal_1_assert_assertguard_assert_agent_const_1*
T

2		*
_output_shapes
 20
.agent/assert_equal_1/Assert/AssertGuard/Assert
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identity
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2`
.agent/assert_equal_1/Assert/AssertGuard/Assert.agent/assert_equal_1/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


__inference_apply_987
x
action_values_981
action_values_983
identityЂ%action_values/StatefulPartitionedCallё
%action_values/StatefulPartitionedCallStatefulPartitionedCallxaction_values_981action_values_983*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9802'
%action_values/StatefulPartitionedCallЊ
IdentityIdentity.action_values/StatefulPartitionedCall:output:0&^action_values/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2N
%action_values/StatefulPartitionedCall%action_values/StatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
ћ
j
__inference_mode_195298
probabilities

logits
action_values
state_value
identity	
$action_distribution/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2&
$action_distribution/ArgMax/dimensionЎ
action_distribution/ArgMaxArgMaxaction_values-action_distribution/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
action_distribution/ArgMaxs
IdentityIdentity#action_distribution/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameprobabilities:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namelogits:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameaction_values:PL
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namestate_value
ј
А
3agent_assert_equal_1_Assert_AssertGuard_true_195649M
Iagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all
7
3agent_assert_equal_1_assert_assertguard_placeholder	9
5agent_assert_equal_1_assert_assertguard_placeholder_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
z
,agent/assert_equal_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_1/Assert/AssertGuard/NoOp
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all-^agent/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityа
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
м
/
__inference_past_horizon_195624
identity	
policy/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference_past_horizon_1956212
policy/PartitionedCallb
IdentityIdentitypolicy/PartitionedCall:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 

/
__inference_past_horizon_195621
identity	`
network/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
network/Constl
network/stackPacknetwork/Const:output:0*
N*
T0	*
_output_shapes
:2
network/stack
network/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
network/Max/reduction_indices
network/MaxMaxnetwork/stack:output:0&network/Max/reduction_indices:output:0*
T0	*
_output_shapes
: 2
network/MaxW
IdentityIdentitynetwork/Max:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
а
Х
__inference_apply_917
x)
%dense0_matmul_readvariableop_resource*
&dense0_biasadd_readvariableop_resource
identityЂdense0/BiasAdd/ReadVariableOpЂdense0/MatMul/ReadVariableOpЂ
dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense0/MatMul/ReadVariableOp
dense0/MatMulMatMulx$dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/MatMulЁ
dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense0/BiasAdd/ReadVariableOp
dense0/BiasAddBiasAdddense0/MatMul:product:0%dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/BiasAddШ
dense0/PartitionedCallPartitionedCalldense0/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9142
dense0/PartitionedCallВ
IdentityIdentitydense0/PartitionedCall:output:0^dense0/BiasAdd/ReadVariableOp^dense0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::2>
dense0/BiasAdd/ReadVariableOpdense0/BiasAdd/ReadVariableOp2<
dense0/MatMul/ReadVariableOpdense0/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex
џ
в
policy_cond_true_195769
policy_cond_195831
policy_cond_195833.
*policy_cond_policy_statefulpartitionedcall
policy_cond_mask

policy_cond_identity	Ђ#policy/cond/StatefulPartitionedCallь
#policy/cond/StatefulPartitionedCallStatefulPartitionedCall*policy_cond_policy_statefulpartitionedcallpolicy_cond_maskpolicy_cond_195831policy_cond_195833*
Tin
2
*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference_parametrize_1958302%
#policy/cond/StatefulPartitionedCallп
policy/cond/PartitionedCallPartitionedCall,policy/cond/StatefulPartitionedCall:output:0,policy/cond/StatefulPartitionedCall:output:1,policy/cond/StatefulPartitionedCall:output:2,policy/cond/StatefulPartitionedCall:output:3*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 * 
fR
__inference_mode_1958492
policy/cond/PartitionedCallВ
policy/cond/IdentityIdentity$policy/cond/PartitionedCall:output:0$^policy/cond/StatefulPartitionedCall*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity"5
policy_cond_identitypolicy/cond/Identity:output:0*A
_input_shapes0
.:::џџџџџџџџџ@:џџџџџџџџџ2J
#policy/cond/StatefulPartitionedCall#policy/cond/StatefulPartitionedCall:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ
д 
м
__inference__traced_save_196007
file_prefixY
Usavev2_agent_policy_action_distribution_action_values_linear_bias_read_readvariableop\
Xsavev2_agent_policy_action_distribution_action_values_linear_weights_read_readvariableop?
;savev2_agent_policy_network_dense0_bias_read_readvariableopB
>savev2_agent_policy_network_dense0_weights_read_readvariableop?
;savev2_agent_policy_network_dense1_bias_read_readvariableopB
>savev2_agent_policy_network_dense1_weights_read_readvariableop+
'savev2_save_counter_read_readvariableop	
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*­
valueЃB B\agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEB_agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEBAagent.Spolicy.Snetwork.Sdense0.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEBDagent.Spolicy.Snetwork.Sdense0.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEBAagent.Spolicy.Snetwork.Sdense1.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEBDagent.Spolicy.Snetwork.Sdense1.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEB'save_counter/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Usavev2_agent_policy_action_distribution_action_values_linear_bias_read_readvariableopXsavev2_agent_policy_action_distribution_action_values_linear_weights_read_readvariableop;savev2_agent_policy_network_dense0_bias_read_readvariableop>savev2_agent_policy_network_dense0_weights_read_readvariableop;savev2_agent_policy_network_dense1_bias_read_readvariableop>savev2_agent_policy_network_dense1_weights_read_readvariableop'savev2_save_counter_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*I
_input_shapes8
6: ::@:@:@:@:@@: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@:

_output_shapes
: :

_output_shapes
: 
У
Ш
__inference_apply_195731
x)
%dense0_matmul_readvariableop_resource*
&dense0_biasadd_readvariableop_resource
identityЂdense0/BiasAdd/ReadVariableOpЂdense0/MatMul/ReadVariableOpЂ
dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense0/MatMul/ReadVariableOp
dense0/MatMulMatMulx$dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/MatMulЁ
dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense0/BiasAdd/ReadVariableOp
dense0/BiasAddBiasAdddense0/MatMul:product:0%dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/BiasAddИ
dense0/PartitionedCallPartitionedCalldense0/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957282
dense0/PartitionedCallВ
IdentityIdentitydense0/PartitionedCall:output:0^dense0/BiasAdd/ReadVariableOp^dense0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ::2>
dense0/BiasAdd/ReadVariableOpdense0/BiasAdd/ReadVariableOp2<
dense0/MatMul/ReadVariableOpdense0/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex


__inference_sample_195918
probabilities

logits
action_values
state_value
temperature
identity	Ђaction_distribution/cond{
action_distribution/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Н752
action_distribution/Const
action_distribution/LessLesstemperature"action_distribution/Const:output:0*
T0*
_output_shapes
: 2
action_distribution/Lessм
action_distribution/condIfaction_distribution/Less:z:0action_valueslogitstemperature"action_distribution/Const:output:0probabilities*
Tcond0
*
Tin	
2*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
else_branch)R'
%action_distribution_cond_false_195877*"
output_shapes
:џџџџџџџџџ*7
then_branch(R&
$action_distribution_cond_true_1958762
action_distribution/condЃ
!action_distribution/cond/IdentityIdentity!action_distribution/cond:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity
IdentityIdentity*action_distribution/cond/Identity:output:0^action_distribution/cond*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: 24
action_distribution/condaction_distribution/cond:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameprobabilities:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namelogits:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameaction_values:PL
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namestate_value:C?

_output_shapes
: 
%
_user_specified_nametemperature

,
__inference_past_horizon_753
identity	`
network/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
network/Constl
network/stackPacknetwork/Const:output:0*
N*
T0	*
_output_shapes
:2
network/stack
network/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
network/Max/reduction_indices
network/MaxMaxnetwork/stack:output:0&network/Max/reduction_indices:output:0*
T0	*
_output_shapes
: 2
network/MaxW
IdentityIdentitynetwork/Max:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
ѓ
э
4agent_assert_equal_5_Assert_AssertGuard_false_195582K
Gagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all
<
8agent_assert_equal_5_assert_assertguard_assert_agent_all
>
:agent_assert_equal_5_assert_assertguard_assert_agent_const
6
2agent_assert_equal_5_assert_assertguard_identity_1
Ђ.agent/assert_equal_5/Assert/AssertGuard/Assertъ
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;Agent.independent_act: at least one action has to be valid.27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_1С
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (agent/All:0) = 27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_2У
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*%
valueB By (agent/Const:0) = 27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_4а
.agent/assert_equal_5/Assert/AssertGuard/AssertAssertGagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all>agent/assert_equal_5/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_5/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_5/Assert/AssertGuard/Assert/data_2:output:08agent_assert_equal_5_assert_assertguard_assert_agent_all>agent/assert_equal_5/Assert/AssertGuard/Assert/data_4:output:0:agent_assert_equal_5_assert_assertguard_assert_agent_const*
T

2

*
_output_shapes
 20
.agent/assert_equal_5/Assert/AssertGuard/Assert
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all/^agent/assert_equal_5/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identity
2agent/assert_equal_5/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_5/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_5/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_5/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_5_assert_assertguard_identity_1;agent/assert_equal_5/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2`
.agent/assert_equal_5/Assert/AssertGuard/Assert.agent/assert_equal_5/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ё
4agent_assert_equal_1_Assert_AssertGuard_false_195455K
Gagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all
?
;agent_assert_equal_1_assert_assertguard_assert_agent_cast_1	?
;agent_assert_equal_1_assert_assertguard_assert_agent_concat	6
2agent_assert_equal_1_assert_assertguard_identity_1
Ђ.agent/assert_equal_1/Assert/AssertGuard/Assertх
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*G
value>B< B6Agent.independent_act: invalid shape for  state input.27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Ф
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_1:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Ф
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*&
valueB By (agent/concat:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4д
.agent/assert_equal_1/Assert/AssertGuard/AssertAssertGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all>agent/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_equal_1_assert_assertguard_assert_agent_cast_1>agent/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0;agent_assert_equal_1_assert_assertguard_assert_agent_concat*
T

2		*
_output_shapes
 20
.agent/assert_equal_1/Assert/AssertGuard/Assert
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identity
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::2`
.agent/assert_equal_1/Assert/AssertGuard/Assert.agent/assert_equal_1/Assert/AssertGuard/Assert: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
ё
G
__inference_apply_195689

args_0
deterministic

identityС
#state_preprocessing/PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1956862%
#state_preprocessing/PartitionedCall
IdentityIdentity,state_preprocessing/PartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_input_shapes
:џџџџџџџџџ: :O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:EA

_output_shapes
: 
'
_user_specified_namedeterministic
Ф%

"__inference__traced_restore_196038
file_prefixO
Kassignvariableop_agent_policy_action_distribution_action_values_linear_biasT
Passignvariableop_1_agent_policy_action_distribution_action_values_linear_weights7
3assignvariableop_2_agent_policy_network_dense0_bias:
6assignvariableop_3_agent_policy_network_dense0_weights7
3assignvariableop_4_agent_policy_network_dense1_bias:
6assignvariableop_5_agent_policy_network_dense1_weights#
assignvariableop_6_save_counter

identity_8ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6Ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*­
valueЃB B\agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEB_agent.Spolicy.Saction_distribution.Saction_values.Slinear.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEBAagent.Spolicy.Snetwork.Sdense0.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEBDagent.Spolicy.Snetwork.Sdense0.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEBAagent.Spolicy.Snetwork.Sdense1.Sbias:0/.ATTRIBUTES/VARIABLE_VALUEBDagent.Spolicy.Snetwork.Sdense1.Sweights:0/.ATTRIBUTES/VARIABLE_VALUEB'save_counter/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 2
RestoreV2/shape_and_slicesг
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЪ
AssignVariableOpAssignVariableOpKassignvariableop_agent_policy_action_distribution_action_values_linear_biasIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOpPassignvariableop_1_agent_policy_action_distribution_action_values_linear_weightsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2И
AssignVariableOp_2AssignVariableOp3assignvariableop_2_agent_policy_network_dense0_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Л
AssignVariableOp_3AssignVariableOp6assignvariableop_3_agent_policy_network_dense0_weightsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4И
AssignVariableOp_4AssignVariableOp3assignvariableop_4_agent_policy_network_dense1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Л
AssignVariableOp_5AssignVariableOp6assignvariableop_5_agent_policy_network_dense1_weightsIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6Є
AssignVariableOp_6AssignVariableOpassignvariableop_6_save_counterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_69
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpљ

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_7ы

Identity_8IdentityIdentity_7:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*
T0*
_output_shapes
: 2

Identity_8"!

identity_8Identity_8:output:0*1
_input_shapes 
: :::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_6:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ј
А
3agent_assert_equal_5_Assert_AssertGuard_true_195170M
Iagent_assert_equal_5_assert_assertguard_identity_agent_assert_equal_5_all
7
3agent_assert_equal_5_assert_assertguard_placeholder
9
5agent_assert_equal_5_assert_assertguard_placeholder_1
6
2agent_assert_equal_5_assert_assertguard_identity_1
z
,agent/assert_equal_5/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_5/Assert/AssertGuard/NoOp
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_5_assert_assertguard_identity_agent_assert_equal_5_all-^agent/assert_equal_5/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identityа
2agent/assert_equal_5/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_5/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_5/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_5_assert_assertguard_identity_1;agent/assert_equal_5/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
к
,
__inference_apply_839
x
identity
linear_normalization0/ConstConst*
_output_shapes
:*
dtype0
*
valueB
Z    2
linear_normalization0/Const
linear_normalization0/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"Р  @РPwжО  @Р2
linear_normalization0/Const_1
linear_normalization0/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"@  @@Pwж>  @@2
linear_normalization0/Const_2
linear_normalization0/subSubx&linear_normalization0/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/sub
linear_normalization0/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @2
linear_normalization0/mul/xД
linear_normalization0/mulMul$linear_normalization0/mul/x:output:0linear_normalization0/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/mulЖ
linear_normalization0/sub_1Sub&linear_normalization0/Const_2:output:0&linear_normalization0/Const_1:output:0*
T0*
_output_shapes
:2
linear_normalization0/sub_1Л
linear_normalization0/truedivRealDivlinear_normalization0/mul:z:0linear_normalization0/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/truediv
linear_normalization0/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
linear_normalization0/sub_2/yО
linear_normalization0/sub_2Sub!linear_normalization0/truediv:z:0&linear_normalization0/sub_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/sub_2Ш
linear_normalization0/SelectV2SelectV2$linear_normalization0/Const:output:0xlinear_normalization0/sub_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
linear_normalization0/SelectV2{
IdentityIdentity'linear_normalization0/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex
	
А
3agent_assert_equal_3_Assert_AssertGuard_true_195135M
Iagent_assert_equal_3_assert_assertguard_identity_agent_assert_equal_3_all
7
3agent_assert_equal_3_assert_assertguard_placeholder	9
5agent_assert_equal_3_assert_assertguard_placeholder_1	6
2agent_assert_equal_3_assert_assertguard_identity_1
z
,agent/assert_equal_3/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_3/Assert/AssertGuard/NoOp
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_3_assert_assertguard_identity_agent_assert_equal_3_all-^agent/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identityа
2agent/assert_equal_3/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_3/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_3/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_3_assert_assertguard_identity_1;agent/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Ј
(
__inference_value_195856
identityk
temperature/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
temperature/Const]
IdentityIdentitytemperature/Const:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 

@
__forward_apply_4952
x
identity
activation_tanh_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"&
activation_tanhactivation/Tanh:y:0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@*B
backward_function_name(&__inference___backward_apply_4945_4953:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
Ю	
Ў
$action_distribution_cond_true_1958761
-action_distribution_cond_argmax_action_values(
$action_distribution_cond_placeholder*
&action_distribution_cond_placeholder_1*
&action_distribution_cond_placeholder_2*
&action_distribution_cond_placeholder_3%
!action_distribution_cond_identity	Ё
)action_distribution/cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2+
)action_distribution/cond/ArgMax/dimensionн
action_distribution/cond/ArgMaxArgMax-action_distribution_cond_argmax_action_values2action_distribution/cond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2!
action_distribution/cond/ArgMaxЊ
!action_distribution/cond/IdentityIdentity(action_distribution/cond/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity"O
!action_distribution_cond_identity*action_distribution/cond/Identity:output:0*P
_input_shapes?
=:џџџџџџџџџ:џџџџџџџџџ: : :џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
;
&
$__inference_initial_internals_195961*
_input_shapes 


д
9agent_assert_greater_equal_Assert_AssertGuard_true_195073Y
Uagent_assert_greater_equal_assert_assertguard_identity_agent_assert_greater_equal_all
=
9agent_assert_greater_equal_assert_assertguard_placeholder?
;agent_assert_greater_equal_assert_assertguard_placeholder_1<
8agent_assert_greater_equal_assert_assertguard_identity_1

2agent/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 24
2agent/assert_greater_equal/Assert/AssertGuard/NoOpЉ
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentityUagent_assert_greater_equal_assert_assertguard_identity_agent_assert_greater_equal_all3^agent/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identityт
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1Identity?agent/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2:
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1"}
8agent_assert_greater_equal_assert_assertguard_identity_1Aagent/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:
	
А
3agent_assert_equal_1_Assert_AssertGuard_true_195454M
Iagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all
7
3agent_assert_equal_1_assert_assertguard_placeholder	9
5agent_assert_equal_1_assert_assertguard_placeholder_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
z
,agent/assert_equal_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_1/Assert/AssertGuard/NoOp
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all-^agent/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityа
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
ћ
j
__inference_mode_195849
probabilities

logits
action_values
state_value
identity	
$action_distribution/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2&
$action_distribution/ArgMax/dimensionЎ
action_distribution/ArgMaxArgMaxaction_values-action_distribution/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2
action_distribution/ArgMaxs
IdentityIdentity#action_distribution/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*[
_input_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameprobabilities:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namelogits:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameaction_values:PL
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namestate_value
	
в
$__inference_signature_wrapper_195425

args_0
deterministic

mask

unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity	ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallargs_0maskdeterministicunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2	

*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_independent_act_1954042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџ: :џџџџџџџџџ::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:EA

_output_shapes
: 
'
_user_specified_namedeterministic:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask
н
/
__inference_apply_195686
x
identity
linear_normalization0/ConstConst*
_output_shapes
:*
dtype0
*
valueB
Z    2
linear_normalization0/Const
linear_normalization0/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"Р  @РPwжО  @Р2
linear_normalization0/Const_1
linear_normalization0/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"@  @@Pwж>  @@2
linear_normalization0/Const_2
linear_normalization0/subSubx&linear_normalization0/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/sub
linear_normalization0/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  @2
linear_normalization0/mul/xД
linear_normalization0/mulMul$linear_normalization0/mul/x:output:0linear_normalization0/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/mulЖ
linear_normalization0/sub_1Sub&linear_normalization0/Const_2:output:0&linear_normalization0/Const_1:output:0*
T0*
_output_shapes
:2
linear_normalization0/sub_1Л
linear_normalization0/truedivRealDivlinear_normalization0/mul:z:0linear_normalization0/sub_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/truediv
linear_normalization0/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
linear_normalization0/sub_2/yО
linear_normalization0/sub_2Sub!linear_normalization0/truediv:z:0&linear_normalization0/sub_2/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear_normalization0/sub_2Ш
linear_normalization0/SelectV2SelectV2$linear_normalization0/Const:output:0xlinear_normalization0/sub_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
linear_normalization0/SelectV2{
IdentityIdentity'linear_normalization0/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex
м
,
__inference_past_horizon_756
identity	
baseline/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_past_horizon_7532
baseline/PartitionedCalld
IdentityIdentity!baseline/PartitionedCall:output:0*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 

/
__inference_apply_195728
x
identity_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex


м
__forward_apply_4886
x
action_values_981
action_values_983
identity)
%action_values_statefulpartitionedcall+
'action_values_statefulpartitionedcall_0Ђ%action_values/StatefulPartitionedCall
%action_values/StatefulPartitionedCallStatefulPartitionedCallxaction_values_981action_values_983*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:џџџџџџџџџ:@:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__forward_apply_48742'
%action_values/StatefulPartitionedCallЊ
IdentityIdentity.action_values/StatefulPartitionedCall:output:0&^action_values/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"W
%action_values_statefulpartitionedcall.action_values/StatefulPartitionedCall:output:1"Y
'action_values_statefulpartitionedcall_0.action_values/StatefulPartitionedCall:output:2"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::*B
backward_function_name(&__inference___backward_apply_4858_48872N
%action_values/StatefulPartitionedCall%action_values/StatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex

ћ
policy_cond_false_195277
policy_cond_195303
policy_cond_195305.
*policy_cond_policy_statefulpartitionedcall
policy_cond_mask

policy_cond_identity	Ђ#policy/cond/StatefulPartitionedCallЂ%policy/cond/StatefulPartitionedCall_1
policy/cond/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_value_10492
policy/cond/PartitionedCallъ
#policy/cond/StatefulPartitionedCallStatefulPartitionedCall*policy_cond_policy_statefulpartitionedcallpolicy_cond_maskpolicy_cond_195303policy_cond_195305*
Tin
2
*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_parametrize_10212%
#policy/cond/StatefulPartitionedCallЄ
%policy/cond/StatefulPartitionedCall_1StatefulPartitionedCall,policy/cond/StatefulPartitionedCall:output:0,policy/cond/StatefulPartitionedCall:output:1,policy/cond/StatefulPartitionedCall:output:2,policy/cond/StatefulPartitionedCall:output:3$policy/cond/PartitionedCall:output:0*
Tin	
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *"
fR
__inference_sample_1953642'
%policy/cond/StatefulPartitionedCall_1ф
policy/cond/IdentityIdentity.policy/cond/StatefulPartitionedCall_1:output:0$^policy/cond/StatefulPartitionedCall&^policy/cond/StatefulPartitionedCall_1*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity"5
policy_cond_identitypolicy/cond/Identity:output:0*A
_input_shapes0
.:::џџџџџџџџџ@:џџџџџџџџџ2J
#policy/cond/StatefulPartitionedCall#policy/cond/StatefulPartitionedCall2N
%policy/cond/StatefulPartitionedCall_1%policy/cond/StatefulPartitionedCall_1:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ
	
А
3agent_assert_equal_1_Assert_AssertGuard_true_195043M
Iagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all
7
3agent_assert_equal_1_assert_assertguard_placeholder	9
5agent_assert_equal_1_assert_assertguard_placeholder_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
z
,agent/assert_equal_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_1/Assert/AssertGuard/NoOp
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all-^agent/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityа
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
§

:agent_assert_greater_equal_Assert_AssertGuard_false_195485W
Sagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_all
?
;agent_assert_greater_equal_assert_assertguard_assert_args_0F
Bagent_assert_greater_equal_assert_assertguard_assert_agent_const_2<
8agent_assert_greater_equal_assert_assertguard_identity_1
Ђ4agent/assert_greater_equal/Assert/AssertGuard/Assertѕ
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid min value for  state input.2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_0ц
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_1Ъ
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_2б
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_2:0) = 2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_4
4agent/assert_greater_equal/Assert/AssertGuard/AssertAssertSagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_allDagent/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_greater_equal_assert_assertguard_assert_args_0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Bagent_assert_greater_equal_assert_assertguard_assert_agent_const_2*
T

2*
_output_shapes
 26
4agent/assert_greater_equal/Assert/AssertGuard/AssertЉ
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentitySagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_all5^agent/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identity
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1Identity?agent/assert_greater_equal/Assert/AssertGuard/Identity:output:05^agent/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2:
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1"}
8agent_assert_greater_equal_assert_assertguard_identity_1Aagent/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:2l
4agent/assert_greater_equal/Assert/AssertGuard/Assert4agent/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:

ћ
policy_cond_false_195770
policy_cond_195858
policy_cond_195860.
*policy_cond_policy_statefulpartitionedcall
policy_cond_mask

policy_cond_identity	Ђ#policy/cond/StatefulPartitionedCallЂ%policy/cond/StatefulPartitionedCall_1
policy/cond/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_value_1958562
policy/cond/PartitionedCallь
#policy/cond/StatefulPartitionedCallStatefulPartitionedCall*policy_cond_policy_statefulpartitionedcallpolicy_cond_maskpolicy_cond_195858policy_cond_195860*
Tin
2
*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference_parametrize_1958302%
#policy/cond/StatefulPartitionedCallЄ
%policy/cond/StatefulPartitionedCall_1StatefulPartitionedCall,policy/cond/StatefulPartitionedCall:output:0,policy/cond/StatefulPartitionedCall:output:1,policy/cond/StatefulPartitionedCall:output:2,policy/cond/StatefulPartitionedCall:output:3$policy/cond/PartitionedCall:output:0*
Tin	
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *"
fR
__inference_sample_1959182'
%policy/cond/StatefulPartitionedCall_1ф
policy/cond/IdentityIdentity.policy/cond/StatefulPartitionedCall_1:output:0$^policy/cond/StatefulPartitionedCall&^policy/cond/StatefulPartitionedCall_1*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity"5
policy_cond_identitypolicy/cond/Identity:output:0*A
_input_shapes0
.:::џџџџџџџџџ@:џџџџџџџџџ2J
#policy/cond/StatefulPartitionedCall#policy/cond/StatefulPartitionedCall2N
%policy/cond/StatefulPartitionedCall_1%policy/cond/StatefulPartitionedCall_1:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ
ч

__forward_apply_4965
x_0)
%dense1_matmul_readvariableop_resource*
&dense1_biasadd_readvariableop_resource
identity
dense1_partitionedcall 
dense1_matmul_readvariableop
xЂdense1/BiasAdd/ReadVariableOpЂdense1/MatMul/ReadVariableOpЂ
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense1/MatMul/ReadVariableOp
dense1/MatMulMatMulx_0$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/MatMulЁ
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense1/BiasAdd/ReadVariableOp
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/BiasAddШ
dense1/PartitionedCallPartitionedCalldense1/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__forward_apply_49522
dense1/PartitionedCallВ
IdentityIdentitydense1/PartitionedCall:output:0^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"D
dense1_matmul_readvariableop$dense1/MatMul/ReadVariableOp:value:0"9
dense1_partitionedcalldense1/PartitionedCall:output:1"
identityIdentity:output:0"
xx_0*.
_input_shapes
:џџџџџџџџџ@::*B
backward_function_name(&__inference___backward_apply_4941_49662>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex

@
__forward_apply_4987
x
identity
activation_tanh_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"&
activation_tanhactivation/Tanh:y:0"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@*B
backward_function_name(&__inference___backward_apply_4980_4988:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
Щ
ш
"__inference_independent_act_195958

args_0
mask

deterministic

agent_195944
agent_195946
agent_195948
agent_195950
agent_195952
agent_195954
identity	Ђagent/StatefulPartitionedCallЂ agent/VerifyFinite/CheckNumericsЂ'agent/assert_equal_1/Assert/AssertGuardЂ'agent/assert_equal_3/Assert/AssertGuardЂ'agent/assert_equal_5/Assert/AssertGuardЂ-agent/assert_greater_equal/Assert/AssertGuardЂ*agent/assert_less_equal/Assert/AssertGuardP
agent/ShapeShapeargs_0*
T0*
_output_shapes
:2
agent/Shape
agent/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/strided_slice/stack
agent/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_1
agent/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_2
agent/strided_sliceStridedSliceagent/Shape:output:0"agent/strided_slice/stack:output:0$agent/strided_slice/stack_1:output:0$agent/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
agent/strided_slicen

agent/CastCastagent/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2

agent/Cast\
agent/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
agent/Const
4agent/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 26
4agent/assert_type/statically_determined_correct_typeh
agent/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R2
agent/Const_1n
agent/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/ExpandDims/dim
agent/ExpandDims
ExpandDimsagent/Cast:y:0agent/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
agent/ExpandDimsh
agent/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/concat/axisЅ
agent/concatConcatV2agent/ExpandDims:output:0agent/Const_1:output:0agent/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
agent/concatT
agent/Shape_1Shapeargs_0*
T0*
_output_shapes
:2
agent/Shape_1p
agent/Cast_1Castagent/Shape_1:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
agent/Cast_1
agent/assert_equal_1/EqualEqualagent/Cast_1:y:0agent/concat:output:0*
T0	*
_output_shapes
:2
agent/assert_equal_1/Equal
agent/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/assert_equal_1/Const
agent/assert_equal_1/AllAllagent/assert_equal_1/Equal:z:0#agent/assert_equal_1/Const:output:0*
_output_shapes
: 2
agent/assert_equal_1/AllН
!agent/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*G
value>B< B6Agent.independent_act: invalid shape for  state input.2#
!agent/assert_equal_1/Assert/ConstЖ
#agent/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_1/Assert/Const_1 
#agent/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_1:0) = 2%
#agent/assert_equal_1/Assert/Const_2 
#agent/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*&
valueB By (agent/concat:0) = 2%
#agent/assert_equal_1/Assert/Const_3і
'agent/assert_equal_1/Assert/AssertGuardIf!agent/assert_equal_1/All:output:0!agent/assert_equal_1/All:output:0agent/Cast_1:y:0agent/concat:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_1_Assert_AssertGuard_false_195455*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_1_Assert_AssertGuard_true_1954542)
'agent/assert_equal_1/Assert/AssertGuardУ
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/IdentityЁ
 agent/VerifyFinite/CheckNumericsCheckNumericsargs_0(^agent/assert_equal_1/Assert/AssertGuard*
T0*
_class
loc:@args_0*'
_output_shapes
:џџџџџџџџџ*K
message@>Agent.independent_act: invalid inf/nan value for  state input.2"
 agent/VerifyFinite/CheckNumericsв
%agent/VerifyFinite/control_dependencyIdentityargs_0!^agent/VerifyFinite/CheckNumerics*
T0*
_class
loc:@args_0*'
_output_shapes
:џџџџџџџџџ2'
%agent/VerifyFinite/control_dependencyw
agent/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"Р  @РPwжО  @Р2
agent/Const_2Д
'agent/assert_greater_equal/GreaterEqualGreaterEqualargs_0agent/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'agent/assert_greater_equal/GreaterEqual
 agent/assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 agent/assert_greater_equal/ConstЗ
agent/assert_greater_equal/AllAll+agent/assert_greater_equal/GreaterEqual:z:0)agent/assert_greater_equal/Const:output:0*
_output_shapes
: 2 
agent/assert_greater_equal/AllЭ
'agent/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid min value for  state input.2)
'agent/assert_greater_equal/Assert/ConstТ
)agent/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2+
)agent/assert_greater_equal/Assert/Const_1І
)agent/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2+
)agent/assert_greater_equal/Assert/Const_2­
)agent/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_2:0) = 2+
)agent/assert_greater_equal/Assert/Const_3Д
-agent/assert_greater_equal/Assert/AssertGuardIf'agent/assert_greater_equal/All:output:0'agent/assert_greater_equal/All:output:0args_0agent/Const_2:output:0!^agent/VerifyFinite/CheckNumerics*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *M
else_branch>R<
:agent_assert_greater_equal_Assert_AssertGuard_false_195485*
output_shapes
: *L
then_branch=R;
9agent_assert_greater_equal_Assert_AssertGuard_true_1954842/
-agent/assert_greater_equal/Assert/AssertGuardе
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentity6agent/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identityw
agent/Const_3Const*
_output_shapes
:*
dtype0*%
valueB"@  @@Pwж>  @@2
agent/Const_3Ѕ
!agent/assert_less_equal/LessEqual	LessEqualargs_0agent/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2#
!agent/assert_less_equal/LessEqual
agent/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
agent/assert_less_equal/ConstЈ
agent/assert_less_equal/AllAll%agent/assert_less_equal/LessEqual:z:0&agent/assert_less_equal/Const:output:0*
_output_shapes
: 2
agent/assert_less_equal/AllЧ
$agent/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid max value for  state input.2&
$agent/assert_less_equal/Assert/ConstМ
&agent/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2(
&agent/assert_less_equal/Assert/Const_1 
&agent/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2(
&agent/assert_less_equal/Assert/Const_2Ї
&agent/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_3:0) = 2(
&agent/assert_less_equal/Assert/Const_3Џ
*agent/assert_less_equal/Assert/AssertGuardIf$agent/assert_less_equal/All:output:0$agent/assert_less_equal/All:output:0args_0agent/Const_3:output:0.^agent/assert_greater_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *J
else_branch;R9
7agent_assert_less_equal_Assert_AssertGuard_false_195513*
output_shapes
: *I
then_branch:R8
6agent_assert_less_equal_Assert_AssertGuard_true_1955122,
*agent/assert_less_equal/Assert/AssertGuardЬ
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentity3agent/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identity
6agent/assert_type_1/statically_determined_correct_typeNoOp*
_output_shapes
 28
6agent/assert_type_1/statically_determined_correct_typeh
agent/Const_4Const*
_output_shapes
:*
dtype0	*
valueB	R2
agent/Const_4r
agent/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/ExpandDims_1/dim
agent/ExpandDims_1
ExpandDimsagent/Cast:y:0agent/ExpandDims_1/dim:output:0*
T0	*
_output_shapes
:2
agent/ExpandDims_1l
agent/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/concat_1/axis­
agent/concat_1ConcatV2agent/ExpandDims_1:output:0agent/Const_4:output:0agent/concat_1/axis:output:0*
N*
T0	*
_output_shapes
:2
agent/concat_1R
agent/Shape_2Shapemask*
T0
*
_output_shapes
:2
agent/Shape_2p
agent/Cast_2Castagent/Shape_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
agent/Cast_2
agent/assert_equal_3/EqualEqualagent/Cast_2:y:0agent/concat_1:output:0*
T0	*
_output_shapes
:2
agent/assert_equal_3/Equal
agent/assert_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/assert_equal_3/Const
agent/assert_equal_3/AllAllagent/assert_equal_3/Equal:z:0#agent/assert_equal_3/Const:output:0*
_output_shapes
: 2
agent/assert_equal_3/AllЛ
!agent/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*E
value<B: B4Agent.independent_act: invalid shape for mask input.2#
!agent/assert_equal_3/Assert/ConstЖ
#agent/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_3/Assert/Const_1 
#agent/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_2:0) = 2%
#agent/assert_equal_3/Assert/Const_2Ђ
#agent/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*(
valueB By (agent/concat_1:0) = 2%
#agent/assert_equal_3/Assert/Const_3Ѕ
'agent/assert_equal_3/Assert/AssertGuardIf!agent/assert_equal_3/All:output:0!agent/assert_equal_3/All:output:0agent/Cast_2:y:0agent/concat_1:output:0+^agent/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_3_Assert_AssertGuard_false_195547*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_3_Assert_AssertGuard_true_1955462)
'agent/assert_equal_3/Assert/AssertGuardУ
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_3/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identity
6agent/assert_type_2/statically_determined_correct_typeNoOp*
_output_shapes
 28
6agent/assert_type_2/statically_determined_correct_typea
agent/Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 2
agent/Const_5|
agent/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
agent/Any/reduction_indicesn
	agent/AnyAnymask$agent/Any/reduction_indices:output:0*#
_output_shapes
:џџџџџџџџџ2
	agent/Anyh
agent/Const_6Const*
_output_shapes
:*
dtype0*
valueB: 2
agent/Const_6a
	agent/AllAllagent/Any:output:0agent/Const_6:output:0*
_output_shapes
: 2
	agent/All
agent/assert_equal_5/EqualEqualagent/All:output:0agent/Const:output:0*
T0
*
_output_shapes
: 2
agent/assert_equal_5/Equalx
agent/assert_equal_5/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/assert_equal_5/Rank
 agent/assert_equal_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 agent/assert_equal_5/range/start
 agent/assert_equal_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 agent/assert_equal_5/range/deltaе
agent/assert_equal_5/rangeRange)agent/assert_equal_5/range/start:output:0"agent/assert_equal_5/Rank:output:0)agent/assert_equal_5/range/delta:output:0*
_output_shapes
: 2
agent/assert_equal_5/range
agent/assert_equal_5/AllAllagent/assert_equal_5/Equal:z:0#agent/assert_equal_5/range:output:0*
_output_shapes
: 2
agent/assert_equal_5/AllТ
!agent/assert_equal_5/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;Agent.independent_act: at least one action has to be valid.2#
!agent/assert_equal_5/Assert/ConstЖ
#agent/assert_equal_5/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_5/Assert/Const_1
#agent/assert_equal_5/Assert/Const_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (agent/All:0) = 2%
#agent/assert_equal_5/Assert/Const_2
#agent/assert_equal_5/Assert/Const_3Const*
_output_shapes
: *
dtype0*%
valueB By (agent/Const:0) = 2%
#agent/assert_equal_5/Assert/Const_3Ё
'agent/assert_equal_5/Assert/AssertGuardIf!agent/assert_equal_5/All:output:0!agent/assert_equal_5/All:output:0agent/All:output:0agent/Const:output:0(^agent/assert_equal_3/Assert/AssertGuard*
Tcond0
*
Tin
2


*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_5_Assert_AssertGuard_false_195582*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_5_Assert_AssertGuard_true_1955812)
'agent/assert_equal_5/Assert/AssertGuardУ
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_5/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identity
agent/zeros/Less/yConst&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rш2
agent/zeros/Less/yz
agent/zeros/LessLessagent/Cast:y:0agent/zeros/Less/y:output:0*
T0	*
_output_shapes
: 2
agent/zeros/Less
agent/zeros/CastCastagent/Cast:y:0&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*

DstT0*

SrcT0	*
_output_shapes
: 2
agent/zeros/Castt
agent/zeros/packedPackagent/zeros/Cast:y:0*
N*
T0*
_output_shapes
:2
agent/zeros/packed
agent/zeros/ConstConst&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/zeros/Const
agent/zerosFillagent/zeros/packed:output:0agent/zeros/Const:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
agent/zerosЬ
agent/StatefulPartitionedCallStatefulPartitionedCallargs_0maskagent/zeros:output:0deterministicagent_195944agent_195946agent_195948agent_195950agent_195952agent_195954*
Tin
2

	
*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *$
fR
__inference_core_act_1959432
agent/StatefulPartitionedCall
IdentityIdentity&agent/StatefulPartitionedCall:output:0^agent/StatefulPartitionedCall!^agent/VerifyFinite/CheckNumerics(^agent/assert_equal_1/Assert/AssertGuard(^agent/assert_equal_3/Assert/AssertGuard(^agent/assert_equal_5/Assert/AssertGuard.^agent/assert_greater_equal/Assert/AssertGuard+^agent/assert_less_equal/Assert/AssertGuard*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџ: ::::::2>
agent/StatefulPartitionedCallagent/StatefulPartitionedCall2D
 agent/VerifyFinite/CheckNumerics agent/VerifyFinite/CheckNumerics2R
'agent/assert_equal_1/Assert/AssertGuard'agent/assert_equal_1/Assert/AssertGuard2R
'agent/assert_equal_3/Assert/AssertGuard'agent/assert_equal_3/Assert/AssertGuard2R
'agent/assert_equal_5/Assert/AssertGuard'agent/assert_equal_5/Assert/AssertGuard2^
-agent/assert_greater_equal/Assert/AssertGuard-agent/assert_greater_equal/Assert/AssertGuard2X
*agent/assert_less_equal/Assert/AssertGuard*agent/assert_less_equal/Assert/AssertGuard:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:EA

_output_shapes
: 
'
_user_specified_namedeterministic
І
&
__inference_value_1049
identityk
temperature/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
temperature/Const]
IdentityIdentitytemperature/Const:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
У
Ш
__inference_apply_195752
x)
%dense1_matmul_readvariableop_resource*
&dense1_biasadd_readvariableop_resource
identityЂdense1/BiasAdd/ReadVariableOpЂdense1/MatMul/ReadVariableOpЂ
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense1/MatMul/ReadVariableOp
dense1/MatMulMatMulx$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/MatMulЁ
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense1/BiasAdd/ReadVariableOp
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense1/BiasAddИ
dense1/PartitionedCallPartitionedCalldense1/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957492
dense1/PartitionedCallВ
IdentityIdentitydense1/PartitionedCall:output:0^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
	
А
3agent_assert_equal_3_Assert_AssertGuard_true_195546M
Iagent_assert_equal_3_assert_assertguard_identity_agent_assert_equal_3_all
7
3agent_assert_equal_3_assert_assertguard_placeholder	9
5agent_assert_equal_3_assert_assertguard_placeholder_1	6
2agent_assert_equal_3_assert_assertguard_identity_1
z
,agent/assert_equal_3/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_3/Assert/AssertGuard/NoOp
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_3_assert_assertguard_identity_agent_assert_equal_3_all-^agent/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identityа
2agent/assert_equal_3/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_3/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_3/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_3_assert_assertguard_identity_1;agent/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:
Ѕ=

__inference_core_act_195389

args_0
mask

parallel	
deterministic

agent_195373
agent_195375
agent_195377
agent_195379
agent_195381
agent_195383
identity	Ђagent/StatefulPartitionedCallЂ'agent/assert_equal_1/Assert/AssertGuard_
agent/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
agent/Const`
agent/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/Const_1
agent/PartitionedCallPartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_past_horizon_7422
agent/PartitionedCall
agent/PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_past_horizon_7562
agent/PartitionedCall_1
agent/MaximumMaximumagent/PartitionedCall:output:0 agent/PartitionedCall_1:output:0*
T0	*
_output_shapes
: 2
agent/Maximum
agent/assert_equal_1/EqualEqualagent/Maximum:z:0agent/Const_1:output:0*
T0	*
_output_shapes
: 2
agent/assert_equal_1/Equalx
agent/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/assert_equal_1/Rank
 agent/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 agent/assert_equal_1/range/start
 agent/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 agent/assert_equal_1/range/deltaе
agent/assert_equal_1/rangeRange)agent/assert_equal_1/range/start:output:0"agent/assert_equal_1/Rank:output:0)agent/assert_equal_1/range/delta:output:0*
_output_shapes
: 2
agent/assert_equal_1/range
agent/assert_equal_1/AllAllagent/assert_equal_1/Equal:z:0#agent/assert_equal_1/range:output:0*
_output_shapes
: 2
agent/assert_equal_1/AllС
!agent/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Policy/baseline on-policy horizon currently not supported.2#
!agent/assert_equal_1/Assert/ConstЖ
#agent/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_1/Assert/Const_1Ё
#agent/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*'
valueB Bx (agent/Maximum:0) = 2%
#agent/assert_equal_1/Assert/Const_2Ё
#agent/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_1:0) = 2%
#agent/assert_equal_1/Assert/Const_3ј
'agent/assert_equal_1/Assert/AssertGuardIf!agent/assert_equal_1/All:output:0!agent/assert_equal_1/All:output:0agent/Maximum:z:0agent/Const_1:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_1_Assert_AssertGuard_false_195218*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_1_Assert_AssertGuard_true_1952172)
'agent/assert_equal_1/Assert/AssertGuardУ
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityь
agent/PartitionedCall_2PartitionedCallargs_0deterministic1^agent/assert_equal_1/Assert/AssertGuard/Identity*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1952432
agent/PartitionedCall_2j
agent/ShapeShape agent/PartitionedCall_2:output:0*
T0*
_output_shapes
:2
agent/ShapeГ
agent/strided_slice/stackConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2
agent/strided_slice/stackЗ
agent/strided_slice/stack_1Const1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_1З
agent/strided_slice/stack_2Const1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_2
agent/strided_sliceStridedSliceagent/Shape:output:0"agent/strided_slice/stack:output:0$agent/strided_slice/stack_1:output:0$agent/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
agent/strided_slicen

agent/CastCastagent/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2

agent/Cast
agent/range/startConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/range/start
agent/range/deltaConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2
agent/range/delta
agent/rangeRangeagent/range/start:output:0agent/Cast:y:0agent/range/delta:output:0*

Tidx0	*#
_output_shapes
:џџџџџџџџџ2
agent/range
agent/ones/Less/yConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rш2
agent/ones/Less/yw
agent/ones/LessLessagent/Cast:y:0agent/ones/Less/y:output:0*
T0	*
_output_shapes
: 2
agent/ones/Lessj
agent/ones/CastCastagent/Cast:y:0*

DstT0*

SrcT0	*
_output_shapes
: 2
agent/ones/Castq
agent/ones/packedPackagent/ones/Cast:y:0*
N*
T0*
_output_shapes
:2
agent/ones/packed
agent/ones/ConstConst1^agent/assert_equal_1/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2
agent/ones/Const

agent/onesFillagent/ones/packed:output:0agent/ones/Const:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2

agent/ones
agent/stackPackagent/range:output:0agent/ones:output:0*
N*
T0	*'
_output_shapes
:џџџџџџџџџ*

axis2
agent/stackс
agent/StatefulPartitionedCallStatefulPartitionedCall agent/PartitionedCall_2:output:0agent/stack:output:0maskdeterministicagent_195373agent_195375agent_195377agent_195379agent_195381agent_195383*
Tin
2
	

*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_act_1953722
agent/StatefulPartitionedCall
agent/zeros_like	ZerosLike&agent/StatefulPartitionedCall:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
agent/zeros_like
	agent/AddAdd&agent/StatefulPartitionedCall:output:0agent/zeros_like:y:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
	agent/AddЇ
IdentityIdentityagent/Add:z:0^agent/StatefulPartitionedCall(^agent/assert_equal_1/Assert/AssertGuard*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: ::::::2>
agent/StatefulPartitionedCallagent/StatefulPartitionedCall2R
'agent/assert_equal_1/Assert/AssertGuard'agent/assert_equal_1/Assert/AssertGuard:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
parallel:EA

_output_shapes
: 
'
_user_specified_namedeterministic


__inference_sample_195364
probabilities

logits
action_values
state_value
temperature
identity	Ђaction_distribution/cond{
action_distribution/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *Н752
action_distribution/Const
action_distribution/LessLesstemperature"action_distribution/Const:output:0*
T0*
_output_shapes
: 2
action_distribution/Lessм
action_distribution/condIfaction_distribution/Less:z:0action_valueslogitstemperature"action_distribution/Const:output:0probabilities*
Tcond0
*
Tin	
2*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *8
else_branch)R'
%action_distribution_cond_false_195323*"
output_shapes
:џџџџџџџџџ*7
then_branch(R&
$action_distribution_cond_true_1953222
action_distribution/condЃ
!action_distribution/cond/IdentityIdentity!action_distribution/cond:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity
IdentityIdentity*action_distribution/cond/Identity:output:0^action_distribution/cond*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: 24
action_distribution/condaction_distribution/cond:V R
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameprobabilities:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namelogits:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_nameaction_values:PL
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namestate_value:C?

_output_shapes
: 
%
_user_specified_nametemperature
ј
А
3agent_assert_equal_1_Assert_AssertGuard_true_195217M
Iagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all
7
3agent_assert_equal_1_assert_assertguard_placeholder	9
5agent_assert_equal_1_assert_assertguard_placeholder_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
z
,agent/assert_equal_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2.
,agent/assert_equal_1/Assert/AssertGuard/NoOp
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityIagent_assert_equal_1_assert_assertguard_identity_agent_assert_equal_1_all-^agent/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identityа
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ѓ
4agent_assert_equal_1_Assert_AssertGuard_false_195650K
Gagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all
@
<agent_assert_equal_1_assert_assertguard_assert_agent_maximum	@
<agent_assert_equal_1_assert_assertguard_assert_agent_const_1	6
2agent_assert_equal_1_assert_assertguard_identity_1
Ђ.agent/assert_equal_1/Assert/AssertGuard/Assertщ
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Policy/baseline on-policy horizon currently not supported.27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_1Х
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*'
valueB Bx (agent/Maximum:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_2Х
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_1:0) = 27
5agent/assert_equal_1/Assert/AssertGuard/Assert/data_4ж
.agent/assert_equal_1/Assert/AssertGuard/AssertAssertGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all>agent/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0<agent_assert_equal_1_assert_assertguard_assert_agent_maximum>agent/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0<agent_assert_equal_1_assert_assertguard_assert_agent_const_1*
T

2		*
_output_shapes
 20
.agent/assert_equal_1/Assert/AssertGuard/Assert
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_1_assert_assertguard_assert_agent_assert_equal_1_all/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/Identity
2agent/assert_equal_1/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_1/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_1/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_1_assert_assertguard_identity_1;agent/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2`
.agent/assert_equal_1/Assert/AssertGuard/Assert.agent/assert_equal_1/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

,
__inference_apply_914
x
identity_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
§
ф
__inference_apply_3969

args_0
horizons	
deterministic

network_3958
network_3960
network_3963
network_3965
identityЂnetwork/StatefulPartitionedCallЂ!network/StatefulPartitionedCall_1р
network/StatefulPartitionedCallStatefulPartitionedCallargs_0network_3958network_3960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9172!
network/StatefulPartitionedCall
!network/StatefulPartitionedCall_1StatefulPartitionedCall(network/StatefulPartitionedCall:output:0network_3963network_3965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_9402#
!network/StatefulPartitionedCall_1Ф
IdentityIdentity*network/StatefulPartitionedCall_1:output:0 ^network/StatefulPartitionedCall"^network/StatefulPartitionedCall_1*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:џџџџџџџџџ:џџџџџџџџџ: ::::2B
network/StatefulPartitionedCallnetwork/StatefulPartitionedCall2F
!network/StatefulPartitionedCall_1!network/StatefulPartitionedCall_1:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
horizons:EA

_output_shapes
: 
'
_user_specified_namedeterministic


д
9agent_assert_greater_equal_Assert_AssertGuard_true_195484Y
Uagent_assert_greater_equal_assert_assertguard_identity_agent_assert_greater_equal_all
=
9agent_assert_greater_equal_assert_assertguard_placeholder?
;agent_assert_greater_equal_assert_assertguard_placeholder_1<
8agent_assert_greater_equal_assert_assertguard_identity_1

2agent/assert_greater_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 24
2agent/assert_greater_equal/Assert/AssertGuard/NoOpЉ
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentityUagent_assert_greater_equal_assert_assertguard_identity_agent_assert_greater_equal_all3^agent/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identityт
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1Identity?agent/assert_greater_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2:
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1"}
8agent_assert_greater_equal_assert_assertguard_identity_1Aagent/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:

,
__inference_apply_937
x
identity_
activation/TanhTanhx*
T0*'
_output_shapes
:џџџџџџџџџ@2
activation/Tanhg
IdentityIdentityactivation/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ@:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
Ю	
Ў
$action_distribution_cond_true_1953221
-action_distribution_cond_argmax_action_values(
$action_distribution_cond_placeholder*
&action_distribution_cond_placeholder_1*
&action_distribution_cond_placeholder_2*
&action_distribution_cond_placeholder_3%
!action_distribution_cond_identity	Ё
)action_distribution/cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2+
)action_distribution/cond/ArgMax/dimensionн
action_distribution/cond/ArgMaxArgMax-action_distribution_cond_argmax_action_values2action_distribution/cond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2!
action_distribution/cond/ArgMaxЊ
!action_distribution/cond/IdentityIdentity(action_distribution/cond/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity"O
!action_distribution_cond_identity*action_distribution/cond/Identity:output:0*P
_input_shapes?
=:џџџџџџџџџ:џџџџџџџџџ: : :џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
й	
Т
6agent_assert_less_equal_Assert_AssertGuard_true_195512S
Oagent_assert_less_equal_assert_assertguard_identity_agent_assert_less_equal_all
:
6agent_assert_less_equal_assert_assertguard_placeholder<
8agent_assert_less_equal_assert_assertguard_placeholder_19
5agent_assert_less_equal_assert_assertguard_identity_1

/agent/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 21
/agent/assert_less_equal/Assert/AssertGuard/NoOp
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentityOagent_assert_less_equal_assert_assertguard_identity_agent_assert_less_equal_all0^agent/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identityй
5agent/assert_less_equal/Assert/AssertGuard/Identity_1Identity<agent/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 27
5agent/assert_less_equal/Assert/AssertGuard/Identity_1"w
5agent_assert_less_equal_assert_assertguard_identity_1>agent/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:


Ш
__inference_apply_195789
x)
%linear_matmul_readvariableop_resource*
&linear_biasadd_readvariableop_resource
identityЂlinear/BiasAdd/ReadVariableOpЂlinear/MatMul/ReadVariableOpЂ
linear/MatMul/ReadVariableOpReadVariableOp%linear_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
linear/MatMul/ReadVariableOp
linear/MatMulMatMulx$linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/MatMulЁ
linear/BiasAdd/ReadVariableOpReadVariableOp&linear_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
linear/BiasAdd/ReadVariableOp
linear/BiasAddBiasAddlinear/MatMul:product:0%linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/BiasAddЊ
IdentityIdentitylinear/BiasAdd:output:0^linear/BiasAdd/ReadVariableOp^linear/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2>
linear/BiasAdd/ReadVariableOplinear/BiasAdd/ReadVariableOp2<
linear/MatMul/ReadVariableOplinear/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
§	
Х
__inference_apply_980
x)
%linear_matmul_readvariableop_resource*
&linear_biasadd_readvariableop_resource
identityЂlinear/BiasAdd/ReadVariableOpЂlinear/MatMul/ReadVariableOpЂ
linear/MatMul/ReadVariableOpReadVariableOp%linear_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
linear/MatMul/ReadVariableOp
linear/MatMulMatMulx$linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/MatMulЁ
linear/BiasAdd/ReadVariableOpReadVariableOp&linear_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
linear/BiasAdd/ReadVariableOp
linear/BiasAddBiasAddlinear/MatMul:product:0%linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/BiasAddЊ
IdentityIdentitylinear/BiasAdd:output:0^linear/BiasAdd/ReadVariableOp^linear/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2>
linear/BiasAdd/ReadVariableOplinear/BiasAdd/ReadVariableOp2<
linear/MatMul/ReadVariableOplinear/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
ч

__forward_apply_5000
x_0)
%dense0_matmul_readvariableop_resource*
&dense0_biasadd_readvariableop_resource
identity
dense0_partitionedcall 
dense0_matmul_readvariableop
xЂdense0/BiasAdd/ReadVariableOpЂdense0/MatMul/ReadVariableOpЂ
dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense0/MatMul/ReadVariableOp
dense0/MatMulMatMulx_0$dense0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/MatMulЁ
dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense0/BiasAdd/ReadVariableOp
dense0/BiasAddBiasAdddense0/MatMul:product:0%dense0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@2
dense0/BiasAddШ
dense0/PartitionedCallPartitionedCalldense0/BiasAdd:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__forward_apply_49872
dense0/PartitionedCallВ
IdentityIdentitydense0/PartitionedCall:output:0^dense0/BiasAdd/ReadVariableOp^dense0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"D
dense0_matmul_readvariableop$dense0/MatMul/ReadVariableOp:value:0"9
dense0_partitionedcalldense0/PartitionedCall:output:1"
identityIdentity:output:0"
xx_0*.
_input_shapes
:џџџџџџџџџ::*B
backward_function_name(&__inference___backward_apply_4976_50012>
dense0/BiasAdd/ReadVariableOpdense0/BiasAdd/ReadVariableOp2<
dense0/MatMul/ReadVariableOpdense0/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ

_user_specified_namex

ѓ
4agent_assert_equal_3_Assert_AssertGuard_false_195136K
Gagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all
?
;agent_assert_equal_3_assert_assertguard_assert_agent_cast_2	A
=agent_assert_equal_3_assert_assertguard_assert_agent_concat_1	6
2agent_assert_equal_3_assert_assertguard_identity_1
Ђ.agent/assert_equal_3/Assert/AssertGuard/Assertу
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*E
value<B: B4Agent.independent_act: invalid shape for mask input.27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_1Ф
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_2:0) = 27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_2Ц
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*(
valueB By (agent/concat_1:0) = 27
5agent/assert_equal_3/Assert/AssertGuard/Assert/data_4ж
.agent/assert_equal_3/Assert/AssertGuard/AssertAssertGagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all>agent/assert_equal_3/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_3/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_3/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_equal_3_assert_assertguard_assert_agent_cast_2>agent/assert_equal_3/Assert/AssertGuard/Assert/data_4:output:0=agent_assert_equal_3_assert_assertguard_assert_agent_concat_1*
T

2		*
_output_shapes
 20
.agent/assert_equal_3/Assert/AssertGuard/Assert
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_3_assert_assertguard_assert_agent_assert_equal_3_all/^agent/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identity
2agent/assert_equal_3/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_3/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_3/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_3_assert_assertguard_identity_1;agent/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*!
_input_shapes
: ::2`
.agent/assert_equal_3/Assert/AssertGuard/Assert.agent/assert_equal_3/Assert/AssertGuard/Assert: 

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:


7agent_assert_less_equal_Assert_AssertGuard_false_195513Q
Magent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_all
<
8agent_assert_less_equal_assert_assertguard_assert_args_0C
?agent_assert_less_equal_assert_assertguard_assert_agent_const_39
5agent_assert_less_equal_assert_assertguard_identity_1
Ђ1agent/assert_less_equal/Assert/AssertGuard/Assertя
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid max value for  state input.2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_0р
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_1Ф
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_2Ы
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_3:0) = 2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_4э
1agent/assert_less_equal/Assert/AssertGuard/AssertAssertMagent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_allAagent/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:08agent_assert_less_equal_assert_assertguard_assert_args_0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_4:output:0?agent_assert_less_equal_assert_assertguard_assert_agent_const_3*
T

2*
_output_shapes
 23
1agent/assert_less_equal/Assert/AssertGuard/Assert
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentityMagent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_all2^agent/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identity
5agent/assert_less_equal/Assert/AssertGuard/Identity_1Identity<agent/assert_less_equal/Assert/AssertGuard/Identity:output:02^agent/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 27
5agent/assert_less_equal/Assert/AssertGuard/Identity_1"w
5agent_assert_less_equal_assert_assertguard_identity_1>agent/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:2f
1agent/assert_less_equal/Assert/AssertGuard/Assert1agent/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:


7agent_assert_less_equal_Assert_AssertGuard_false_195102Q
Magent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_all
<
8agent_assert_less_equal_assert_assertguard_assert_args_0C
?agent_assert_less_equal_assert_assertguard_assert_agent_const_39
5agent_assert_less_equal_assert_assertguard_identity_1
Ђ1agent/assert_less_equal/Assert/AssertGuard/Assertя
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid max value for  state input.2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_0р
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_1Ф
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_2Ы
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_3:0) = 2:
8agent/assert_less_equal/Assert/AssertGuard/Assert/data_4э
1agent/assert_less_equal/Assert/AssertGuard/AssertAssertMagent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_allAagent/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:08agent_assert_less_equal_assert_assertguard_assert_args_0Aagent/assert_less_equal/Assert/AssertGuard/Assert/data_4:output:0?agent_assert_less_equal_assert_assertguard_assert_agent_const_3*
T

2*
_output_shapes
 23
1agent/assert_less_equal/Assert/AssertGuard/Assert
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentityMagent_assert_less_equal_assert_assertguard_assert_agent_assert_less_equal_all2^agent/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identity
5agent/assert_less_equal/Assert/AssertGuard/Identity_1Identity<agent/assert_less_equal/Assert/AssertGuard/Identity:output:02^agent/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 27
5agent/assert_less_equal/Assert/AssertGuard/Identity_1"w
5agent_assert_less_equal_assert_assertguard_identity_1>agent/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:2f
1agent/assert_less_equal/Assert/AssertGuard/Assert1agent/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:
Н
я
__forward_apply_4874
x_0)
%linear_matmul_readvariableop_resource*
&linear_biasadd_readvariableop_resource
identity 
linear_matmul_readvariableop
xЂlinear/BiasAdd/ReadVariableOpЂlinear/MatMul/ReadVariableOpЂ
linear/MatMul/ReadVariableOpReadVariableOp%linear_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
linear/MatMul/ReadVariableOp
linear/MatMulMatMulx_0$linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/MatMulЁ
linear/BiasAdd/ReadVariableOpReadVariableOp&linear_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
linear/BiasAdd/ReadVariableOp
linear/BiasAddBiasAddlinear/MatMul:product:0%linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
linear/BiasAddЊ
IdentityIdentitylinear/BiasAdd:output:0^linear/BiasAdd/ReadVariableOp^linear/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0"D
linear_matmul_readvariableop$linear/MatMul/ReadVariableOp:value:0"
xx_0*.
_input_shapes
:џџџџџџџџџ@::*B
backward_function_name(&__inference___backward_apply_4862_48752>
linear/BiasAdd/ReadVariableOplinear/BiasAdd/ReadVariableOp2<
linear/MatMul/ReadVariableOplinear/MatMul/ReadVariableOp:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex
І

__inference_apply_195796
x
action_values_195790
action_values_195792
identityЂ%action_values/StatefulPartitionedCallњ
%action_values/StatefulPartitionedCallStatefulPartitionedCallxaction_values_195790action_values_195792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957892'
%action_values/StatefulPartitionedCallЊ
IdentityIdentity.action_values/StatefulPartitionedCall:output:0&^action_values/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@::2N
%action_values/StatefulPartitionedCall%action_values/StatefulPartitionedCall:J F
'
_output_shapes
:џџџџџџџџџ@

_user_specified_namex

ю
__inference_apply_195759

args_0
horizons	
deterministic

network_195732
network_195734
network_195753
network_195755
identityЂnetwork/StatefulPartitionedCallЂ!network/StatefulPartitionedCall_1ч
network/StatefulPartitionedCallStatefulPartitionedCallargs_0network_195732network_195734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957312!
network/StatefulPartitionedCall
!network/StatefulPartitionedCall_1StatefulPartitionedCall(network/StatefulPartitionedCall:output:0network_195753network_195755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957522#
!network/StatefulPartitionedCall_1Ф
IdentityIdentity*network/StatefulPartitionedCall_1:output:0 ^network/StatefulPartitionedCall"^network/StatefulPartitionedCall_1*
T0*'
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:џџџџџџџџџ:џџџџџџџџџ: ::::2B
network/StatefulPartitionedCallnetwork/StatefulPartitionedCall2F
!network/StatefulPartitionedCall_1!network/StatefulPartitionedCall_1:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
horizons:EA

_output_shapes
: 
'
_user_specified_namedeterministic
§

:agent_assert_greater_equal_Assert_AssertGuard_false_195074W
Sagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_all
?
;agent_assert_greater_equal_assert_assertguard_assert_args_0F
Bagent_assert_greater_equal_assert_assertguard_assert_agent_const_2<
8agent_assert_greater_equal_assert_assertguard_identity_1
Ђ4agent/assert_greater_equal/Assert/AssertGuard/Assertѕ
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid min value for  state input.2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_0ц
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_1Ъ
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_2б
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_2:0) = 2=
;agent/assert_greater_equal/Assert/AssertGuard/Assert/data_4
4agent/assert_greater_equal/Assert/AssertGuard/AssertAssertSagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_allDagent/assert_greater_equal/Assert/AssertGuard/Assert/data_0:output:0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_1:output:0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_2:output:0;agent_assert_greater_equal_assert_assertguard_assert_args_0Dagent/assert_greater_equal/Assert/AssertGuard/Assert/data_4:output:0Bagent_assert_greater_equal_assert_assertguard_assert_agent_const_2*
T

2*
_output_shapes
 26
4agent/assert_greater_equal/Assert/AssertGuard/AssertЉ
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentitySagent_assert_greater_equal_assert_assertguard_assert_agent_assert_greater_equal_all5^agent/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identity
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1Identity?agent/assert_greater_equal/Assert/AssertGuard/Identity:output:05^agent/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2:
8agent/assert_greater_equal/Assert/AssertGuard/Identity_1"}
8agent_assert_greater_equal_assert_assertguard_identity_1Aagent/assert_greater_equal/Assert/AssertGuard/Identity_1:output:0*.
_input_shapes
: :џџџџџџџџџ:2l
4agent/assert_greater_equal/Assert/AssertGuard/Assert4agent/assert_greater_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ: 

_output_shapes
:
§
в
policy_cond_true_195276
policy_cond_195279
policy_cond_195281.
*policy_cond_policy_statefulpartitionedcall
policy_cond_mask

policy_cond_identity	Ђ#policy/cond/StatefulPartitionedCallъ
#policy/cond/StatefulPartitionedCallStatefulPartitionedCall*policy_cond_policy_statefulpartitionedcallpolicy_cond_maskpolicy_cond_195279policy_cond_195281*
Tin
2
*
Tout
2*
_collective_manager_ids
 *\
_output_shapesJ
H:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *%
f R
__inference_parametrize_10212%
#policy/cond/StatefulPartitionedCallп
policy/cond/PartitionedCallPartitionedCall,policy/cond/StatefulPartitionedCall:output:0,policy/cond/StatefulPartitionedCall:output:1,policy/cond/StatefulPartitionedCall:output:2,policy/cond/StatefulPartitionedCall:output:3*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 * 
fR
__inference_mode_1952982
policy/cond/PartitionedCallВ
policy/cond/IdentityIdentity$policy/cond/PartitionedCall:output:0$^policy/cond/StatefulPartitionedCall*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity"5
policy_cond_identitypolicy/cond/Identity:output:0*A
_input_shapes0
.:::џџџџџџџџџ@:џџџџџџџџџ2J
#policy/cond/StatefulPartitionedCall#policy/cond/StatefulPartitionedCall:-)
'
_output_shapes
:џџџџџџџџџ@:-)
'
_output_shapes
:џџџџџџџџџ
Ч&
С
%action_distribution_cond_false_195877(
$action_distribution_cond_placeholder)
%action_distribution_cond_shape_logits,
(action_distribution_cond_add_temperature:
6action_distribution_cond_add_action_distribution_const/
+action_distribution_cond_less_probabilities%
!action_distribution_cond_identity	
action_distribution/cond/ShapeShape%action_distribution_cond_shape_logits*
T0*
_output_shapes
:2 
action_distribution/cond/Shape
#action_distribution/cond/Fill/valueConst*
_output_shapes
: *
dtype0*
valueB
 *џџџ2%
#action_distribution/cond/Fill/valueЯ
action_distribution/cond/FillFill'action_distribution/cond/Shape:output:0,action_distribution/cond/Fill/value:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/FillШ
action_distribution/cond/addAddV2(action_distribution_cond_add_temperature6action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2
action_distribution/cond/addЪ
 action_distribution/cond/truedivRealDiv%action_distribution_cond_shape_logits action_distribution/cond/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
 action_distribution/cond/truedivн
action_distribution/cond/LessLess+action_distribution_cond_less_probabilities6action_distribution_cond_add_action_distribution_const*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Lessѕ
!action_distribution/cond/SelectV2SelectV2!action_distribution/cond/Less:z:0&action_distribution/cond/Fill:output:0$action_distribution/cond/truediv:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/SelectV2
action_distribution/cond/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
action_distribution/cond/Const
 action_distribution/cond/Shape_1Shape*action_distribution/cond/SelectV2:output:0*
T0*
_output_shapes
:2"
 action_distribution/cond/Shape_1Х
action_distribution/cond/subSub'action_distribution/cond/Const:output:06action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2
action_distribution/cond/subщ
5action_distribution/cond/random_uniform/RandomUniformRandomUniform)action_distribution/cond/Shape_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
dtype027
5action_distribution/cond/random_uniform/RandomUniformм
+action_distribution/cond/random_uniform/subSub action_distribution/cond/sub:z:06action_distribution_cond_add_action_distribution_const*
T0*
_output_shapes
: 2-
+action_distribution/cond/random_uniform/sub
+action_distribution/cond/random_uniform/mulMul>action_distribution/cond/random_uniform/RandomUniform:output:0/action_distribution/cond/random_uniform/sub:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2-
+action_distribution/cond/random_uniform/mulє
'action_distribution/cond/random_uniformAdd/action_distribution/cond/random_uniform/mul:z:06action_distribution_cond_add_action_distribution_const*
T0*'
_output_shapes
:џџџџџџџџџ2)
'action_distribution/cond/random_uniformЂ
action_distribution/cond/LogLog+action_distribution/cond/random_uniform:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Log
action_distribution/cond/NegNeg action_distribution/cond/Log:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2
action_distribution/cond/Neg
action_distribution/cond/Log_1Log action_distribution/cond/Neg:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/Log_1
action_distribution/cond/Neg_1Neg"action_distribution/cond/Log_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/Neg_1Ы
action_distribution/cond/add_1AddV2*action_distribution/cond/SelectV2:output:0"action_distribution/cond/Neg_1:y:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
action_distribution/cond/add_1Ё
)action_distribution/cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2+
)action_distribution/cond/ArgMax/dimensionв
action_distribution/cond/ArgMaxArgMax"action_distribution/cond/add_1:z:02action_distribution/cond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:џџџџџџџџџ2!
action_distribution/cond/ArgMaxЊ
!action_distribution/cond/IdentityIdentity(action_distribution/cond/ArgMax:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2#
!action_distribution/cond/Identity"O
!action_distribution_cond_identity*action_distribution/cond/Identity:output:0*P
_input_shapes?
=:џџџџџџџџџ:џџџџџџџџџ: : :џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ:-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ
ѓ
э
4agent_assert_equal_5_Assert_AssertGuard_false_195171K
Gagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all
<
8agent_assert_equal_5_assert_assertguard_assert_agent_all
>
:agent_assert_equal_5_assert_assertguard_assert_agent_const
6
2agent_assert_equal_5_assert_assertguard_identity_1
Ђ.agent/assert_equal_5/Assert/AssertGuard/Assertъ
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*L
valueCBA B;Agent.independent_act: at least one action has to be valid.27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_0к
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_1С
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (agent/All:0) = 27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_2У
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*%
valueB By (agent/Const:0) = 27
5agent/assert_equal_5/Assert/AssertGuard/Assert/data_4а
.agent/assert_equal_5/Assert/AssertGuard/AssertAssertGagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all>agent/assert_equal_5/Assert/AssertGuard/Assert/data_0:output:0>agent/assert_equal_5/Assert/AssertGuard/Assert/data_1:output:0>agent/assert_equal_5/Assert/AssertGuard/Assert/data_2:output:08agent_assert_equal_5_assert_assertguard_assert_agent_all>agent/assert_equal_5/Assert/AssertGuard/Assert/data_4:output:0:agent_assert_equal_5_assert_assertguard_assert_agent_const*
T

2

*
_output_shapes
 20
.agent/assert_equal_5/Assert/AssertGuard/Assert
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentityGagent_assert_equal_5_assert_assertguard_assert_agent_assert_equal_5_all/^agent/assert_equal_5/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identity
2agent/assert_equal_5/Assert/AssertGuard/Identity_1Identity9agent/assert_equal_5/Assert/AssertGuard/Identity:output:0/^agent/assert_equal_5/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 24
2agent/assert_equal_5/Assert/AssertGuard/Identity_1"q
2agent_assert_equal_5_assert_assertguard_identity_1;agent/assert_equal_5/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2`
.agent/assert_equal_5/Assert/AssertGuard/Assert.agent/assert_equal_5/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


__inference_act_195372

args_0
horizons	
mask

deterministic

policy_195267
policy_195269
policy_195271
policy_195273
policy_cond_input_0
policy_cond_input_1
identity	Ђpolicy/StatefulPartitionedCallЂpolicy/cond
policy/StatefulPartitionedCallStatefulPartitionedCallargs_0horizonsdeterministicpolicy_195267policy_195269policy_195271policy_195273*
Tin
	2	
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_39692 
policy/StatefulPartitionedCall
policy/condIfdeterministicpolicy_cond_input_0policy_cond_input_1'policy/StatefulPartitionedCall:output:0mask*
Tcond0
*
Tin
2
*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*+
else_branchR
policy_cond_false_195277*"
output_shapes
:џџџџџџџџџ**
then_branchR
policy_cond_true_1952762
policy/cond|
policy/cond/IdentityIdentitypolicy/cond:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity
IdentityIdentitypolicy/cond/Identity:output:0^policy/StatefulPartitionedCall^policy/cond*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: ::::::2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2
policy/condpolicy/cond:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
horizons:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:EA

_output_shapes
: 
'
_user_specified_namedeterministic
Щ
ш
"__inference_independent_act_195404

args_0
mask

deterministic

agent_195390
agent_195392
agent_195394
agent_195396
agent_195398
agent_195400
identity	Ђagent/StatefulPartitionedCallЂ agent/VerifyFinite/CheckNumericsЂ'agent/assert_equal_1/Assert/AssertGuardЂ'agent/assert_equal_3/Assert/AssertGuardЂ'agent/assert_equal_5/Assert/AssertGuardЂ-agent/assert_greater_equal/Assert/AssertGuardЂ*agent/assert_less_equal/Assert/AssertGuardP
agent/ShapeShapeargs_0*
T0*
_output_shapes
:2
agent/Shape
agent/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/strided_slice/stack
agent/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_1
agent/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
agent/strided_slice/stack_2
agent/strided_sliceStridedSliceagent/Shape:output:0"agent/strided_slice/stack:output:0$agent/strided_slice/stack_1:output:0$agent/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
agent/strided_slicen

agent/CastCastagent/strided_slice:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2

agent/Cast\
agent/ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
agent/Const
4agent/assert_type/statically_determined_correct_typeNoOp*
_output_shapes
 26
4agent/assert_type/statically_determined_correct_typeh
agent/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R2
agent/Const_1n
agent/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/ExpandDims/dim
agent/ExpandDims
ExpandDimsagent/Cast:y:0agent/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
agent/ExpandDimsh
agent/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/concat/axisЅ
agent/concatConcatV2agent/ExpandDims:output:0agent/Const_1:output:0agent/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
agent/concatT
agent/Shape_1Shapeargs_0*
T0*
_output_shapes
:2
agent/Shape_1p
agent/Cast_1Castagent/Shape_1:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
agent/Cast_1
agent/assert_equal_1/EqualEqualagent/Cast_1:y:0agent/concat:output:0*
T0	*
_output_shapes
:2
agent/assert_equal_1/Equal
agent/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/assert_equal_1/Const
agent/assert_equal_1/AllAllagent/assert_equal_1/Equal:z:0#agent/assert_equal_1/Const:output:0*
_output_shapes
: 2
agent/assert_equal_1/AllН
!agent/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*G
value>B< B6Agent.independent_act: invalid shape for  state input.2#
!agent/assert_equal_1/Assert/ConstЖ
#agent/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_1/Assert/Const_1 
#agent/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_1:0) = 2%
#agent/assert_equal_1/Assert/Const_2 
#agent/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*&
valueB By (agent/concat:0) = 2%
#agent/assert_equal_1/Assert/Const_3і
'agent/assert_equal_1/Assert/AssertGuardIf!agent/assert_equal_1/All:output:0!agent/assert_equal_1/All:output:0agent/Cast_1:y:0agent/concat:output:0*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_1_Assert_AssertGuard_false_195044*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_1_Assert_AssertGuard_true_1950432)
'agent/assert_equal_1/Assert/AssertGuardУ
0agent/assert_equal_1/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_1/Assert/AssertGuard/IdentityЁ
 agent/VerifyFinite/CheckNumericsCheckNumericsargs_0(^agent/assert_equal_1/Assert/AssertGuard*
T0*
_class
loc:@args_0*'
_output_shapes
:џџџџџџџџџ*K
message@>Agent.independent_act: invalid inf/nan value for  state input.2"
 agent/VerifyFinite/CheckNumericsв
%agent/VerifyFinite/control_dependencyIdentityargs_0!^agent/VerifyFinite/CheckNumerics*
T0*
_class
loc:@args_0*'
_output_shapes
:џџџџџџџџџ2'
%agent/VerifyFinite/control_dependencyw
agent/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"Р  @РPwжО  @Р2
agent/Const_2Д
'agent/assert_greater_equal/GreaterEqualGreaterEqualargs_0agent/Const_2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2)
'agent/assert_greater_equal/GreaterEqual
 agent/assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 agent/assert_greater_equal/ConstЗ
agent/assert_greater_equal/AllAll+agent/assert_greater_equal/GreaterEqual:z:0)agent/assert_greater_equal/Const:output:0*
_output_shapes
: 2 
agent/assert_greater_equal/AllЭ
'agent/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid min value for  state input.2)
'agent/assert_greater_equal/Assert/ConstТ
)agent/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:2+
)agent/assert_greater_equal/Assert/Const_1І
)agent/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2+
)agent/assert_greater_equal/Assert/Const_2­
)agent/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_2:0) = 2+
)agent/assert_greater_equal/Assert/Const_3Д
-agent/assert_greater_equal/Assert/AssertGuardIf'agent/assert_greater_equal/All:output:0'agent/assert_greater_equal/All:output:0args_0agent/Const_2:output:0!^agent/VerifyFinite/CheckNumerics*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *M
else_branch>R<
:agent_assert_greater_equal_Assert_AssertGuard_false_195074*
output_shapes
: *L
then_branch=R;
9agent_assert_greater_equal_Assert_AssertGuard_true_1950732/
-agent/assert_greater_equal/Assert/AssertGuardе
6agent/assert_greater_equal/Assert/AssertGuard/IdentityIdentity6agent/assert_greater_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 28
6agent/assert_greater_equal/Assert/AssertGuard/Identityw
agent/Const_3Const*
_output_shapes
:*
dtype0*%
valueB"@  @@Pwж>  @@2
agent/Const_3Ѕ
!agent/assert_less_equal/LessEqual	LessEqualargs_0agent/Const_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2#
!agent/assert_less_equal/LessEqual
agent/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
agent/assert_less_equal/ConstЈ
agent/assert_less_equal/AllAll%agent/assert_less_equal/LessEqual:z:0&agent/assert_less_equal/Const:output:0*
_output_shapes
: 2
agent/assert_less_equal/AllЧ
$agent/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*K
valueBB@ B:Agent.independent_act: invalid max value for  state input.2&
$agent/assert_less_equal/Assert/ConstМ
&agent/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:2(
&agent/assert_less_equal/Assert/Const_1 
&agent/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0* 
valueB Bx (args_0:0) = 2(
&agent/assert_less_equal/Assert/Const_2Ї
&agent/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*'
valueB By (agent/Const_3:0) = 2(
&agent/assert_less_equal/Assert/Const_3Џ
*agent/assert_less_equal/Assert/AssertGuardIf$agent/assert_less_equal/All:output:0$agent/assert_less_equal/All:output:0args_0agent/Const_3:output:0.^agent/assert_greater_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *J
else_branch;R9
7agent_assert_less_equal_Assert_AssertGuard_false_195102*
output_shapes
: *I
then_branch:R8
6agent_assert_less_equal_Assert_AssertGuard_true_1951012,
*agent/assert_less_equal/Assert/AssertGuardЬ
3agent/assert_less_equal/Assert/AssertGuard/IdentityIdentity3agent/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 25
3agent/assert_less_equal/Assert/AssertGuard/Identity
6agent/assert_type_1/statically_determined_correct_typeNoOp*
_output_shapes
 28
6agent/assert_type_1/statically_determined_correct_typeh
agent/Const_4Const*
_output_shapes
:*
dtype0	*
valueB	R2
agent/Const_4r
agent/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/ExpandDims_1/dim
agent/ExpandDims_1
ExpandDimsagent/Cast:y:0agent/ExpandDims_1/dim:output:0*
T0	*
_output_shapes
:2
agent/ExpandDims_1l
agent/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/concat_1/axis­
agent/concat_1ConcatV2agent/ExpandDims_1:output:0agent/Const_4:output:0agent/concat_1/axis:output:0*
N*
T0	*
_output_shapes
:2
agent/concat_1R
agent/Shape_2Shapemask*
T0
*
_output_shapes
:2
agent/Shape_2p
agent/Cast_2Castagent/Shape_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
agent/Cast_2
agent/assert_equal_3/EqualEqualagent/Cast_2:y:0agent/concat_1:output:0*
T0	*
_output_shapes
:2
agent/assert_equal_3/Equal
agent/assert_equal_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
agent/assert_equal_3/Const
agent/assert_equal_3/AllAllagent/assert_equal_3/Equal:z:0#agent/assert_equal_3/Const:output:0*
_output_shapes
: 2
agent/assert_equal_3/AllЛ
!agent/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*E
value<B: B4Agent.independent_act: invalid shape for mask input.2#
!agent/assert_equal_3/Assert/ConstЖ
#agent/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_3/Assert/Const_1 
#agent/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*&
valueB Bx (agent/Cast_2:0) = 2%
#agent/assert_equal_3/Assert/Const_2Ђ
#agent/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*(
valueB By (agent/concat_1:0) = 2%
#agent/assert_equal_3/Assert/Const_3Ѕ
'agent/assert_equal_3/Assert/AssertGuardIf!agent/assert_equal_3/All:output:0!agent/assert_equal_3/All:output:0agent/Cast_2:y:0agent/concat_1:output:0+^agent/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_3_Assert_AssertGuard_false_195136*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_3_Assert_AssertGuard_true_1951352)
'agent/assert_equal_3/Assert/AssertGuardУ
0agent/assert_equal_3/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_3/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_3/Assert/AssertGuard/Identity
6agent/assert_type_2/statically_determined_correct_typeNoOp*
_output_shapes
 28
6agent/assert_type_2/statically_determined_correct_typea
agent/Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 2
agent/Const_5|
agent/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
agent/Any/reduction_indicesn
	agent/AnyAnymask$agent/Any/reduction_indices:output:0*#
_output_shapes
:џџџџџџџџџ2
	agent/Anyh
agent/Const_6Const*
_output_shapes
:*
dtype0*
valueB: 2
agent/Const_6a
	agent/AllAllagent/Any:output:0agent/Const_6:output:0*
_output_shapes
: 2
	agent/All
agent/assert_equal_5/EqualEqualagent/All:output:0agent/Const:output:0*
T0
*
_output_shapes
: 2
agent/assert_equal_5/Equalx
agent/assert_equal_5/RankConst*
_output_shapes
: *
dtype0*
value	B : 2
agent/assert_equal_5/Rank
 agent/assert_equal_5/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 agent/assert_equal_5/range/start
 agent/assert_equal_5/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 agent/assert_equal_5/range/deltaе
agent/assert_equal_5/rangeRange)agent/assert_equal_5/range/start:output:0"agent/assert_equal_5/Rank:output:0)agent/assert_equal_5/range/delta:output:0*
_output_shapes
: 2
agent/assert_equal_5/range
agent/assert_equal_5/AllAllagent/assert_equal_5/Equal:z:0#agent/assert_equal_5/range:output:0*
_output_shapes
: 2
agent/assert_equal_5/AllТ
!agent/assert_equal_5/Assert/ConstConst*
_output_shapes
: *
dtype0*L
valueCBA B;Agent.independent_act: at least one action has to be valid.2#
!agent/assert_equal_5/Assert/ConstЖ
#agent/assert_equal_5/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2%
#agent/assert_equal_5/Assert/Const_1
#agent/assert_equal_5/Assert/Const_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (agent/All:0) = 2%
#agent/assert_equal_5/Assert/Const_2
#agent/assert_equal_5/Assert/Const_3Const*
_output_shapes
: *
dtype0*%
valueB By (agent/Const:0) = 2%
#agent/assert_equal_5/Assert/Const_3Ё
'agent/assert_equal_5/Assert/AssertGuardIf!agent/assert_equal_5/All:output:0!agent/assert_equal_5/All:output:0agent/All:output:0agent/Const:output:0(^agent/assert_equal_3/Assert/AssertGuard*
Tcond0
*
Tin
2


*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *G
else_branch8R6
4agent_assert_equal_5_Assert_AssertGuard_false_195171*
output_shapes
: *F
then_branch7R5
3agent_assert_equal_5_Assert_AssertGuard_true_1951702)
'agent/assert_equal_5/Assert/AssertGuardУ
0agent/assert_equal_5/Assert/AssertGuard/IdentityIdentity0agent/assert_equal_5/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 22
0agent/assert_equal_5/Assert/AssertGuard/Identity
agent/zeros/Less/yConst&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value
B	 Rш2
agent/zeros/Less/yz
agent/zeros/LessLessagent/Cast:y:0agent/zeros/Less/y:output:0*
T0	*
_output_shapes
: 2
agent/zeros/Less
agent/zeros/CastCastagent/Cast:y:0&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*

DstT0*

SrcT0	*
_output_shapes
: 2
agent/zeros/Castt
agent/zeros/packedPackagent/zeros/Cast:y:0*
N*
T0*
_output_shapes
:2
agent/zeros/packed
agent/zeros/ConstConst&^agent/VerifyFinite/control_dependency1^agent/assert_equal_1/Assert/AssertGuard/Identity1^agent/assert_equal_3/Assert/AssertGuard/Identity1^agent/assert_equal_5/Assert/AssertGuard/Identity7^agent/assert_greater_equal/Assert/AssertGuard/Identity4^agent/assert_less_equal/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R 2
agent/zeros/Const
agent/zerosFillagent/zeros/packed:output:0agent/zeros/Const:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
agent/zerosЬ
agent/StatefulPartitionedCallStatefulPartitionedCallargs_0maskagent/zeros:output:0deterministicagent_195390agent_195392agent_195394agent_195396agent_195398agent_195400*
Tin
2

	
*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *$
fR
__inference_core_act_1953892
agent/StatefulPartitionedCall
IdentityIdentity&agent/StatefulPartitionedCall:output:0^agent/StatefulPartitionedCall!^agent/VerifyFinite/CheckNumerics(^agent/assert_equal_1/Assert/AssertGuard(^agent/assert_equal_3/Assert/AssertGuard(^agent/assert_equal_5/Assert/AssertGuard.^agent/assert_greater_equal/Assert/AssertGuard+^agent/assert_less_equal/Assert/AssertGuard*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:џџџџџџџџџ:џџџџџџџџџ: ::::::2>
agent/StatefulPartitionedCallagent/StatefulPartitionedCall2D
 agent/VerifyFinite/CheckNumerics agent/VerifyFinite/CheckNumerics2R
'agent/assert_equal_1/Assert/AssertGuard'agent/assert_equal_1/Assert/AssertGuard2R
'agent/assert_equal_3/Assert/AssertGuard'agent/assert_equal_3/Assert/AssertGuard2R
'agent/assert_equal_5/Assert/AssertGuard'agent/assert_equal_5/Assert/AssertGuard2^
-agent/assert_greater_equal/Assert/AssertGuard-agent/assert_greater_equal/Assert/AssertGuard2X
*agent/assert_less_equal/Assert/AssertGuard*agent/assert_less_equal/Assert/AssertGuard:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:EA

_output_shapes
: 
'
_user_specified_namedeterministic


__inference_act_195926

args_0
horizons	
mask

deterministic

policy_195760
policy_195762
policy_195764
policy_195766
policy_cond_input_0
policy_cond_input_1
identity	Ђpolicy/StatefulPartitionedCallЂpolicy/cond 
policy/StatefulPartitionedCallStatefulPartitionedCallargs_0horizonsdeterministicpolicy_195760policy_195762policy_195764policy_195766*
Tin
	2	
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_apply_1957592 
policy/StatefulPartitionedCall
policy/condIfdeterministicpolicy_cond_input_0policy_cond_input_1'policy/StatefulPartitionedCall:output:0mask*
Tcond0
*
Tin
2
*
Tout
2	*
_lower_using_switch_merge(*#
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*+
else_branchR
policy_cond_false_195770*"
output_shapes
:џџџџџџџџџ**
then_branchR
policy_cond_true_1957692
policy/cond|
policy/cond/IdentityIdentitypolicy/cond:output:0*
T0	*#
_output_shapes
:џџџџџџџџџ2
policy/cond/Identity
IdentityIdentitypolicy/cond/Identity:output:0^policy/StatefulPartitionedCall^policy/cond*
T0	*#
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: ::::::2@
policy/StatefulPartitionedCallpolicy/StatefulPartitionedCall2
policy/condpolicy/cond:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
horizons:MI
'
_output_shapes
:џџџџџџџџџ

_user_specified_namemask:EA

_output_shapes
: 
'
_user_specified_namedeterministic
ю
G
__inference_apply_195243

args_0
deterministic

identityО
#state_preprocessing/PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_apply_8392%
#state_preprocessing/PartitionedCall
IdentityIdentity,state_preprocessing/PartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_input_shapes
:џџџџџџџџџ: :O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameargs_0:EA

_output_shapes
: 
'
_user_specified_namedeterministic"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
9
args_0/
serving_default_args_0:0џџџџџџџџџ
6
deterministic%
serving_default_deterministic:0
 
5
mask-
serving_default_mask:0
џџџџџџџџџ8
output_0,
StatefulPartitionedCall:0	џџџџџџџџџtensorflow/serving/predict:

@<agent/policy/action_distribution/action_values/linear/bias:0
C?agent/policy/action_distribution/action_values/linear/weights:0
&"agent/policy/network/dense0/bias:0
)%agent/policy/network/dense0/weights:0
&"agent/policy/network/dense1/bias:0
)%agent/policy/network/dense1/weights:0
save_counter

signatures
	act

initial_internals"
_generic_user_object
H:F2:agent/policy/action_distribution/action_values/linear/bias
O:M@2=agent/policy/action_distribution/action_values/linear/weights
.:,@2 agent/policy/network/dense0/bias
5:3@2#agent/policy/network/dense0/weights
.:,@2 agent/policy/network/dense1/bias
5:3@@2#agent/policy/network/dense1/weights
:	 2save_counter
,
serving_default"
signature_map
2
"__inference_independent_act_195958ђ
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *bЂ_
џџџџџџџџџ
+Њ(
&
mask
maskџџџџџџџџџ


deterministic 

Л2И
$__inference_initial_internals_195961
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
нBк
$__inference_signature_wrapper_195425args_0deterministicmask"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Л
"__inference_independent_act_195958tЂq
jЂg
 
args_0џџџџџџџџџ
+Њ(
&
mask
maskџџџџџџџџџ


deterministic 

Њ "џџџџџџџџџ	\
$__inference_initial_internals_1959614Ђ

Ђ 
Њ "#Њ 

baselineЊ 

policyЊ ё
$__inference_signature_wrapper_195425ШЂ
Ђ 
Њ}
*
args_0 
args_0џџџџџџџџџ
'
deterministic
deterministic 

&
mask
maskџџџџџџџџџ
"/Њ,
*
output_0
output_0џџџџџџџџџ	