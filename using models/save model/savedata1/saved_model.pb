Ы
Я
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58Ш
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0

Adam/v/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_18/bias
y
(Adam/v/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/bias*
_output_shapes
:*
dtype0

Adam/m/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_18/bias
y
(Adam/m/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/bias*
_output_shapes
:*
dtype0

Adam/v/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*'
shared_nameAdam/v/dense_18/kernel

*Adam/v/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/kernel*
_output_shapes

:#*
dtype0

Adam/m/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*'
shared_nameAdam/m/dense_18/kernel

*Adam/m/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/kernel*
_output_shapes

:#*
dtype0

 Adam/v/lstm_26/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/v/lstm_26/lstm_cell_34/bias

4Adam/v/lstm_26/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_26/lstm_cell_34/bias*
_output_shapes	
:*
dtype0

 Adam/m/lstm_26/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/m/lstm_26/lstm_cell_34/bias

4Adam/m/lstm_26/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_26/lstm_cell_34/bias*
_output_shapes	
:*
dtype0
Е
,Adam/v/lstm_26/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#*=
shared_name.,Adam/v/lstm_26/lstm_cell_34/recurrent_kernel
Ў
@Adam/v/lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_26/lstm_cell_34/recurrent_kernel*
_output_shapes
:	#*
dtype0
Е
,Adam/m/lstm_26/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#*=
shared_name.,Adam/m/lstm_26/lstm_cell_34/recurrent_kernel
Ў
@Adam/m/lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_26/lstm_cell_34/recurrent_kernel*
_output_shapes
:	#*
dtype0
Ё
"Adam/v/lstm_26/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/v/lstm_26/lstm_cell_34/kernel

6Adam/v/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_26/lstm_cell_34/kernel*
_output_shapes
:	*
dtype0
Ё
"Adam/m/lstm_26/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/m/lstm_26/lstm_cell_34/kernel

6Adam/m/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_26/lstm_cell_34/kernel*
_output_shapes
:	*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

lstm_26/lstm_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_26/lstm_cell_34/bias

-lstm_26/lstm_cell_34/bias/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_34/bias*
_output_shapes	
:*
dtype0
Ї
%lstm_26/lstm_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#*6
shared_name'%lstm_26/lstm_cell_34/recurrent_kernel
 
9lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_26/lstm_cell_34/recurrent_kernel*
_output_shapes
:	#*
dtype0

lstm_26/lstm_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_26/lstm_cell_34/kernel

/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_34/kernel*
_output_shapes
:	*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:#*
dtype0

serving_default_lstm_26_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
С
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_26_inputlstm_26/lstm_cell_34/kernel%lstm_26/lstm_cell_34/recurrent_kernellstm_26/lstm_cell_34/biasdense_18/kerneldense_18/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_702141

NoOpNoOp
§(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*И(
valueЎ(BЋ( BЄ(

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
А
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
%trace_0
&trace_1
'trace_2
(trace_3* 
6
)trace_0
*trace_1
+trace_2
,trace_3* 
* 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla*

4serving_default* 

0
1
2*

0
1
2*
* 


5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
;trace_0
<trace_1
=trace_2
>trace_3* 
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
* 
у
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_26/lstm_cell_34/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_26/lstm_cell_34/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_26/lstm_cell_34/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

R0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
R
.0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
S0
U1
W2
Y3
[4*
'
T0
V1
X2
Z3
\4*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 

]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

btrace_0
ctrace_1* 

dtrace_0
etrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
mg
VARIABLE_VALUE"Adam/m/lstm_26/lstm_cell_34/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_26/lstm_cell_34/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_26/lstm_cell_34/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_26/lstm_cell_34/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_26/lstm_cell_34/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_26/lstm_cell_34/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_18/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_18/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_18/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_18/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

h0
i1*

f	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOp9lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOp-lstm_26/lstm_cell_34/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp6Adam/m/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOp6Adam/v/lstm_26/lstm_cell_34/kernel/Read/ReadVariableOp@Adam/m/lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOp@Adam/v/lstm_26/lstm_cell_34/recurrent_kernel/Read/ReadVariableOp4Adam/m/lstm_26/lstm_cell_34/bias/Read/ReadVariableOp4Adam/v/lstm_26/lstm_cell_34/bias/Read/ReadVariableOp*Adam/m/dense_18/kernel/Read/ReadVariableOp*Adam/v/dense_18/kernel/Read/ReadVariableOp(Adam/m/dense_18/bias/Read/ReadVariableOp(Adam/v/dense_18/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst* 
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_703294

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biaslstm_26/lstm_cell_34/kernel%lstm_26/lstm_cell_34/recurrent_kernellstm_26/lstm_cell_34/bias	iterationlearning_rate"Adam/m/lstm_26/lstm_cell_34/kernel"Adam/v/lstm_26/lstm_cell_34/kernel,Adam/m/lstm_26/lstm_cell_34/recurrent_kernel,Adam/v/lstm_26/lstm_cell_34/recurrent_kernel Adam/m/lstm_26/lstm_cell_34/bias Adam/v/lstm_26/lstm_cell_34/biasAdam/m/dense_18/kernelAdam/v/dense_18/kernelAdam/m/dense_18/biasAdam/v/dense_18/biastotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_703361ьс

З
(__inference_lstm_26_layer_call_fn_702495
inputs_0
unknown:	
	unknown_0:	#
	unknown_1:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_701654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
ЬK

C__inference_lstm_26_layer_call_and_return_conditional_losses_702662
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_702577*
condR
while_cond_702576*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
Т

)__inference_dense_18_layer_call_fn_703106

inputs
unknown:#
	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_701832o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ#: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_nameinputs
$
у
while_body_701584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_701608_0:	.
while_lstm_cell_34_701610_0:	#*
while_lstm_cell_34_701612_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_701608:	,
while_lstm_cell_34_701610:	#(
while_lstm_cell_34_701612:	Ђ*while/lstm_cell_34/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_701608_0while_lstm_cell_34_701610_0while_lstm_cell_34_701612_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701524r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_34/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_34_701608while_lstm_cell_34_701608_0"8
while_lstm_cell_34_701610while_lstm_cell_34_701610_0"8
while_lstm_cell_34_701612while_lstm_cell_34_701612_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
ЉK

C__inference_lstm_26_layer_call_and_return_conditional_losses_702020

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_701935*
condR
while_cond_701934*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
§8

C__inference_lstm_26_layer_call_and_return_conditional_losses_701654

inputs&
lstm_cell_34_701570:	&
lstm_cell_34_701572:	#"
lstm_cell_34_701574:	
identityЂ$lstm_cell_34/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_701570lstm_cell_34_701572lstm_cell_34_701574*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701524n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_701570lstm_cell_34_701572lstm_cell_34_701574*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_701584*
condR
while_cond_701583*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#u
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


у
lstm_26_while_cond_702381,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3.
*lstm_26_while_less_lstm_26_strided_slice_1D
@lstm_26_while_lstm_26_while_cond_702381___redundant_placeholder0D
@lstm_26_while_lstm_26_while_cond_702381___redundant_placeholder1D
@lstm_26_while_lstm_26_while_cond_702381___redundant_placeholder2D
@lstm_26_while_lstm_26_while_cond_702381___redundant_placeholder3
lstm_26_while_identity

lstm_26/while/LessLesslstm_26_while_placeholder*lstm_26_while_less_lstm_26_strided_slice_1*
T0*
_output_shapes
: [
lstm_26/while/IdentityIdentitylstm_26/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_26_while_identitylstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
ы
і
-__inference_lstm_cell_34_layer_call_fn_703133

inputs
states_0
states_1
unknown:	
	unknown_0:	#
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701376o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_1
е

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701376

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	#.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_namestates


у
lstm_26_while_cond_702230,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3.
*lstm_26_while_less_lstm_26_strided_slice_1D
@lstm_26_while_lstm_26_while_cond_702230___redundant_placeholder0D
@lstm_26_while_lstm_26_while_cond_702230___redundant_placeholder1D
@lstm_26_while_lstm_26_while_cond_702230___redundant_placeholder2D
@lstm_26_while_lstm_26_while_cond_702230___redundant_placeholder3
lstm_26_while_identity

lstm_26/while/LessLesslstm_26_while_placeholder*lstm_26_while_less_lstm_26_strided_slice_1*
T0*
_output_shapes
: [
lstm_26/while/IdentityIdentitylstm_26/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_26_while_identitylstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:

З
(__inference_lstm_26_layer_call_fn_702484
inputs_0
unknown:	
	unknown_0:	#
	unknown_1:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_701461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
е

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701524

inputs

states
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	#.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_namestates
ўo

!__inference__wrapped_model_701309
lstm_26_inputT
Asequential_19_lstm_26_lstm_cell_34_matmul_readvariableop_resource:	V
Csequential_19_lstm_26_lstm_cell_34_matmul_1_readvariableop_resource:	#Q
Bsequential_19_lstm_26_lstm_cell_34_biasadd_readvariableop_resource:	G
5sequential_19_dense_18_matmul_readvariableop_resource:#D
6sequential_19_dense_18_biasadd_readvariableop_resource:
identityЂ-sequential_19/dense_18/BiasAdd/ReadVariableOpЂ,sequential_19/dense_18/MatMul/ReadVariableOpЂ9sequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpЂ8sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOpЂ:sequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpЂsequential_19/lstm_26/whileX
sequential_19/lstm_26/ShapeShapelstm_26_input*
T0*
_output_shapes
:s
)sequential_19/lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_19/lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_19/lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_19/lstm_26/strided_sliceStridedSlice$sequential_19/lstm_26/Shape:output:02sequential_19/lstm_26/strided_slice/stack:output:04sequential_19/lstm_26/strided_slice/stack_1:output:04sequential_19/lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_19/lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#Е
"sequential_19/lstm_26/zeros/packedPack,sequential_19/lstm_26/strided_slice:output:0-sequential_19/lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_19/lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_19/lstm_26/zerosFill+sequential_19/lstm_26/zeros/packed:output:0*sequential_19/lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
&sequential_19/lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#Й
$sequential_19/lstm_26/zeros_1/packedPack,sequential_19/lstm_26/strided_slice:output:0/sequential_19/lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_19/lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential_19/lstm_26/zeros_1Fill-sequential_19/lstm_26/zeros_1/packed:output:0,sequential_19/lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#y
$sequential_19/lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
sequential_19/lstm_26/transpose	Transposelstm_26_input-sequential_19/lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџp
sequential_19/lstm_26/Shape_1Shape#sequential_19/lstm_26/transpose:y:0*
T0*
_output_shapes
:u
+sequential_19/lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential_19/lstm_26/strided_slice_1StridedSlice&sequential_19/lstm_26/Shape_1:output:04sequential_19/lstm_26/strided_slice_1/stack:output:06sequential_19/lstm_26/strided_slice_1/stack_1:output:06sequential_19/lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_19/lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential_19/lstm_26/TensorArrayV2TensorListReserve:sequential_19/lstm_26/TensorArrayV2/element_shape:output:0.sequential_19/lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential_19/lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential_19/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_19/lstm_26/transpose:y:0Tsequential_19/lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential_19/lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_19/lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%sequential_19/lstm_26/strided_slice_2StridedSlice#sequential_19/lstm_26/transpose:y:04sequential_19/lstm_26/strided_slice_2/stack:output:06sequential_19/lstm_26/strided_slice_2/stack_1:output:06sequential_19/lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЛ
8sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpAsequential_19_lstm_26_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0и
)sequential_19/lstm_26/lstm_cell_34/MatMulMatMul.sequential_19/lstm_26/strided_slice_2:output:0@sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
:sequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpCsequential_19_lstm_26_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0в
+sequential_19/lstm_26/lstm_cell_34/MatMul_1MatMul$sequential_19/lstm_26/zeros:output:0Bsequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЮ
&sequential_19/lstm_26/lstm_cell_34/addAddV23sequential_19/lstm_26/lstm_cell_34/MatMul:product:05sequential_19/lstm_26/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЙ
9sequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpBsequential_19_lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0з
*sequential_19/lstm_26/lstm_cell_34/BiasAddBiasAdd*sequential_19/lstm_26/lstm_cell_34/add:z:0Asequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџt
2sequential_19/lstm_26/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(sequential_19/lstm_26/lstm_cell_34/splitSplit;sequential_19/lstm_26/lstm_cell_34/split/split_dim:output:03sequential_19/lstm_26/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_split
*sequential_19/lstm_26/lstm_cell_34/SigmoidSigmoid1sequential_19/lstm_26/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
,sequential_19/lstm_26/lstm_cell_34/Sigmoid_1Sigmoid1sequential_19/lstm_26/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#Й
&sequential_19/lstm_26/lstm_cell_34/mulMul0sequential_19/lstm_26/lstm_cell_34/Sigmoid_1:y:0&sequential_19/lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
'sequential_19/lstm_26/lstm_cell_34/ReluRelu1sequential_19/lstm_26/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#Ш
(sequential_19/lstm_26/lstm_cell_34/mul_1Mul.sequential_19/lstm_26/lstm_cell_34/Sigmoid:y:05sequential_19/lstm_26/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#Н
(sequential_19/lstm_26/lstm_cell_34/add_1AddV2*sequential_19/lstm_26/lstm_cell_34/mul:z:0,sequential_19/lstm_26/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
,sequential_19/lstm_26/lstm_cell_34/Sigmoid_2Sigmoid1sequential_19/lstm_26/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#
)sequential_19/lstm_26/lstm_cell_34/Relu_1Relu,sequential_19/lstm_26/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ь
(sequential_19/lstm_26/lstm_cell_34/mul_2Mul0sequential_19/lstm_26/lstm_cell_34/Sigmoid_2:y:07sequential_19/lstm_26/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
3sequential_19/lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   t
2sequential_19/lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_19/lstm_26/TensorArrayV2_1TensorListReserve<sequential_19/lstm_26/TensorArrayV2_1/element_shape:output:0;sequential_19/lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential_19/lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_19/lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential_19/lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
sequential_19/lstm_26/whileWhile1sequential_19/lstm_26/while/loop_counter:output:07sequential_19/lstm_26/while/maximum_iterations:output:0#sequential_19/lstm_26/time:output:0.sequential_19/lstm_26/TensorArrayV2_1:handle:0$sequential_19/lstm_26/zeros:output:0&sequential_19/lstm_26/zeros_1:output:0.sequential_19/lstm_26/strided_slice_1:output:0Msequential_19/lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_19_lstm_26_lstm_cell_34_matmul_readvariableop_resourceCsequential_19_lstm_26_lstm_cell_34_matmul_1_readvariableop_resourceBsequential_19_lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_19_lstm_26_while_body_701218*3
cond+R)
'sequential_19_lstm_26_while_cond_701217*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
Fsequential_19/lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   
8sequential_19/lstm_26/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_19/lstm_26/while:output:3Osequential_19/lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elements~
+sequential_19/lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential_19/lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_19/lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential_19/lstm_26/strided_slice_3StridedSliceAsequential_19/lstm_26/TensorArrayV2Stack/TensorListStack:tensor:04sequential_19/lstm_26/strided_slice_3/stack:output:06sequential_19/lstm_26/strided_slice_3/stack_1:output:06sequential_19/lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_mask{
&sequential_19/lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential_19/lstm_26/transpose_1	TransposeAsequential_19/lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_19/lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#q
sequential_19/lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
,sequential_19/dense_18/MatMul/ReadVariableOpReadVariableOp5sequential_19_dense_18_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0П
sequential_19/dense_18/MatMulMatMul.sequential_19/lstm_26/strided_slice_3:output:04sequential_19/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_19/dense_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_19_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_19/dense_18/BiasAddBiasAdd'sequential_19/dense_18/MatMul:product:05sequential_19/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_19/dense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџї
NoOpNoOp.^sequential_19/dense_18/BiasAdd/ReadVariableOp-^sequential_19/dense_18/MatMul/ReadVariableOp:^sequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp9^sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOp;^sequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp^sequential_19/lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2^
-sequential_19/dense_18/BiasAdd/ReadVariableOp-sequential_19/dense_18/BiasAdd/ReadVariableOp2\
,sequential_19/dense_18/MatMul/ReadVariableOp,sequential_19/dense_18/MatMul/ReadVariableOp2v
9sequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp9sequential_19/lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp2t
8sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOp8sequential_19/lstm_26/lstm_cell_34/MatMul/ReadVariableOp2x
:sequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp:sequential_19/lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp2:
sequential_19/lstm_26/whilesequential_19/lstm_26/while:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
г
д
I__inference_sequential_19_layer_call_and_return_conditional_losses_701839

inputs!
lstm_26_701815:	!
lstm_26_701817:	#
lstm_26_701819:	!
dense_18_701833:#
dense_18_701835:
identityЂ dense_18/StatefulPartitionedCallЂlstm_26/StatefulPartitionedCallў
lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputslstm_26_701815lstm_26_701817lstm_26_701819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_701814
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_18_701833dense_18_701835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_701832x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­0
Є	
__inference__traced_save_703294
file_prefix.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop:
6savev2_lstm_26_lstm_cell_34_kernel_read_readvariableopD
@savev2_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableop8
4savev2_lstm_26_lstm_cell_34_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopA
=savev2_adam_m_lstm_26_lstm_cell_34_kernel_read_readvariableopA
=savev2_adam_v_lstm_26_lstm_cell_34_kernel_read_readvariableopK
Gsavev2_adam_m_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableopK
Gsavev2_adam_v_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableop?
;savev2_adam_m_lstm_26_lstm_cell_34_bias_read_readvariableop?
;savev2_adam_v_lstm_26_lstm_cell_34_bias_read_readvariableop5
1savev2_adam_m_dense_18_kernel_read_readvariableop5
1savev2_adam_v_dense_18_kernel_read_readvariableop3
/savev2_adam_m_dense_18_bias_read_readvariableop3
/savev2_adam_v_dense_18_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Т
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B з	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop6savev2_lstm_26_lstm_cell_34_kernel_read_readvariableop@savev2_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableop4savev2_lstm_26_lstm_cell_34_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop=savev2_adam_m_lstm_26_lstm_cell_34_kernel_read_readvariableop=savev2_adam_v_lstm_26_lstm_cell_34_kernel_read_readvariableopGsavev2_adam_m_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableopGsavev2_adam_v_lstm_26_lstm_cell_34_recurrent_kernel_read_readvariableop;savev2_adam_m_lstm_26_lstm_cell_34_bias_read_readvariableop;savev2_adam_v_lstm_26_lstm_cell_34_bias_read_readvariableop1savev2_adam_m_dense_18_kernel_read_readvariableop1savev2_adam_v_dense_18_kernel_read_readvariableop/savev2_adam_m_dense_18_bias_read_readvariableop/savev2_adam_v_dense_18_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ј
_input_shapes
: :#::	:	#:: : :	:	:	#:	#:::#:#::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:#: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	#:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%	!

_output_shapes
:	:%
!

_output_shapes
:	#:%!

_output_shapes
:	#:!

_output_shapes	
::!

_output_shapes	
::$ 

_output_shapes

:#:$ 

_output_shapes

:#: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЬK

C__inference_lstm_26_layer_call_and_return_conditional_losses_702807
inputs_0>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_702722*
condR
while_cond_702721*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
ы
і
-__inference_lstm_cell_34_layer_call_fn_703150

inputs
states_0
states_1
unknown:	
	unknown_0:	#
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701524o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_1
Е
У
while_cond_701390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_701390___redundant_placeholder04
0while_while_cond_701390___redundant_placeholder14
0while_while_cond_701390___redundant_placeholder24
0while_while_cond_701390___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
§8

C__inference_lstm_26_layer_call_and_return_conditional_losses_701461

inputs&
lstm_cell_34_701377:	&
lstm_cell_34_701379:	#"
lstm_cell_34_701381:	
identityЂ$lstm_cell_34/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskѕ
$lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_34_701377lstm_cell_34_701379lstm_cell_34_701381*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701376n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_34_701377lstm_cell_34_701379lstm_cell_34_701381*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_701391*
condR
while_cond_701390*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#u
NoOpNoOp%^lstm_cell_34/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_34/StatefulPartitionedCall$lstm_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
$
у
while_body_701391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_34_701415_0:	.
while_lstm_cell_34_701417_0:	#*
while_lstm_cell_34_701419_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_34_701415:	,
while_lstm_cell_34_701417:	#(
while_lstm_cell_34_701419:	Ђ*while/lstm_cell_34/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Г
*while/lstm_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_34_701415_0while_lstm_cell_34_701417_0while_lstm_cell_34_701419_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_701376r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_34/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_34/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
while/Identity_5Identity3while/lstm_cell_34/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y

while/NoOpNoOp+^while/lstm_cell_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_34_701415while_lstm_cell_34_701415_0"8
while_lstm_cell_34_701417while_lstm_cell_34_701417_0"8
while_lstm_cell_34_701419while_lstm_cell_34_701419_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2X
*while/lstm_cell_34/StatefulPartitionedCall*while/lstm_cell_34/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
Ј9
а
while_body_702722
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
Е
У
while_cond_702866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_702866___redundant_placeholder04
0while_while_cond_702866___redundant_placeholder14
0while_while_cond_702866___redundant_placeholder24
0while_while_cond_702866___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
ЉK

C__inference_lstm_26_layer_call_and_return_conditional_losses_701814

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_701729*
condR
while_cond_701728*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ј9
а
while_body_701935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
з\

I__inference_sequential_19_layer_call_and_return_conditional_losses_702473

inputsF
3lstm_26_lstm_cell_34_matmul_readvariableop_resource:	H
5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource:	#C
4lstm_26_lstm_cell_34_biasadd_readvariableop_resource:	9
'dense_18_matmul_readvariableop_resource:#6
(dense_18_biasadd_readvariableop_resource:
identityЂdense_18/BiasAdd/ReadVariableOpЂdense_18/MatMul/ReadVariableOpЂ+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpЂ*lstm_26/lstm_cell_34/MatMul/ReadVariableOpЂ,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpЂlstm_26/whileC
lstm_26/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#Z
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#k
lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_26/transpose	Transposeinputslstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_26/Shape_1Shapelstm_26/transpose:y:0*
T0*
_output_shapes
:g
lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_26/strided_slice_1StridedSlicelstm_26/Shape_1:output:0&lstm_26/strided_slice_1/stack:output:0(lstm_26/strided_slice_1/stack_1:output:0(lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_26/TensorArrayV2TensorListReserve,lstm_26/TensorArrayV2/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_26/transpose:y:0Flstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_26/strided_slice_2StridedSlicelstm_26/transpose:y:0&lstm_26/strided_slice_2/stack:output:0(lstm_26/strided_slice_2/stack_1:output:0(lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_26/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3lstm_26_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_26/lstm_cell_34/MatMulMatMul lstm_26/strided_slice_2:output:02lstm_26/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0Ј
lstm_26/lstm_cell_34/MatMul_1MatMullstm_26/zeros:output:04lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_26/lstm_cell_34/addAddV2%lstm_26/lstm_cell_34/MatMul:product:0'lstm_26/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_26/lstm_cell_34/BiasAddBiasAddlstm_26/lstm_cell_34/add:z:03lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_26/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_26/lstm_cell_34/splitSplit-lstm_26/lstm_cell_34/split/split_dim:output:0%lstm_26/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_split~
lstm_26/lstm_cell_34/SigmoidSigmoid#lstm_26/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/Sigmoid_1Sigmoid#lstm_26/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/mulMul"lstm_26/lstm_cell_34/Sigmoid_1:y:0lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#x
lstm_26/lstm_cell_34/ReluRelu#lstm_26/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/mul_1Mul lstm_26/lstm_cell_34/Sigmoid:y:0'lstm_26/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/add_1AddV2lstm_26/lstm_cell_34/mul:z:0lstm_26/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/Sigmoid_2Sigmoid#lstm_26/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#u
lstm_26/lstm_cell_34/Relu_1Relulstm_26/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ђ
lstm_26/lstm_cell_34/mul_2Mul"lstm_26/lstm_cell_34/Sigmoid_2:y:0)lstm_26/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#v
%lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   f
$lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_26/TensorArrayV2_1TensorListReserve.lstm_26/TensorArrayV2_1/element_shape:output:0-lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ђ
lstm_26/whileWhile#lstm_26/while/loop_counter:output:0)lstm_26/while/maximum_iterations:output:0lstm_26/time:output:0 lstm_26/TensorArrayV2_1:handle:0lstm_26/zeros:output:0lstm_26/zeros_1:output:0 lstm_26/strided_slice_1:output:0?lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_26_lstm_cell_34_matmul_readvariableop_resource5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource4lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_26_while_body_702382*%
condR
lstm_26_while_cond_702381*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
8lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ю
*lstm_26/TensorArrayV2Stack/TensorListStackTensorListStacklstm_26/while:output:3Alstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsp
lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_26/strided_slice_3StridedSlice3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_26/strided_slice_3/stack:output:0(lstm_26/strided_slice_3/stack_1:output:0(lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maskm
lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_26/transpose_1	Transpose3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#c
lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0
dense_18/MatMulMatMul lstm_26/strided_slice_3:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp,^lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp+^lstm_26/lstm_cell_34/MatMul/ReadVariableOp-^lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2Z
+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp2X
*lstm_26/lstm_cell_34/MatMul/ReadVariableOp*lstm_26/lstm_cell_34/MatMul/ReadVariableOp2\
,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp2
lstm_26/whilelstm_26/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
ю
$__inference_signature_wrapper_702141
lstm_26_input
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3:
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_701309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
Е
У
while_cond_702721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_702721___redundant_placeholder04
0while_while_cond_702721___redundant_placeholder14
0while_while_cond_702721___redundant_placeholder24
0while_while_cond_702721___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
ї
Е
(__inference_lstm_26_layer_call_fn_702506

inputs
unknown:	
	unknown_0:	#
	unknown_1:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_701814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_701728
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_701728___redundant_placeholder04
0while_while_cond_701728___redundant_placeholder14
0while_while_cond_701728___redundant_placeholder24
0while_while_cond_701728___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_701583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_701583___redundant_placeholder04
0while_while_cond_701583___redundant_placeholder14
0while_while_cond_701583___redundant_placeholder24
0while_while_cond_701583___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
Ј9
а
while_body_702577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
Ч	
ѕ
D__inference_dense_18_layer_call_and_return_conditional_losses_701832

inputs0
matmul_readvariableop_resource:#-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_nameinputs
ИS

'sequential_19_lstm_26_while_body_701218H
Dsequential_19_lstm_26_while_sequential_19_lstm_26_while_loop_counterN
Jsequential_19_lstm_26_while_sequential_19_lstm_26_while_maximum_iterations+
'sequential_19_lstm_26_while_placeholder-
)sequential_19_lstm_26_while_placeholder_1-
)sequential_19_lstm_26_while_placeholder_2-
)sequential_19_lstm_26_while_placeholder_3G
Csequential_19_lstm_26_while_sequential_19_lstm_26_strided_slice_1_0
sequential_19_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_26_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_19_lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0:	^
Ksequential_19_lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#Y
Jsequential_19_lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0:	(
$sequential_19_lstm_26_while_identity*
&sequential_19_lstm_26_while_identity_1*
&sequential_19_lstm_26_while_identity_2*
&sequential_19_lstm_26_while_identity_3*
&sequential_19_lstm_26_while_identity_4*
&sequential_19_lstm_26_while_identity_5E
Asequential_19_lstm_26_while_sequential_19_lstm_26_strided_slice_1
}sequential_19_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_26_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_19_lstm_26_while_lstm_cell_34_matmul_readvariableop_resource:	\
Isequential_19_lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource:	#W
Hsequential_19_lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ?sequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpЂ>sequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpЂ@sequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp
Msequential_19/lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential_19/lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_19_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_26_tensorarrayunstack_tensorlistfromtensor_0'sequential_19_lstm_26_while_placeholderVsequential_19/lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Щ
>sequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOpIsequential_19_lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ќ
/sequential_19/lstm_26/while/lstm_cell_34/MatMulMatMulFsequential_19/lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЭ
@sequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOpKsequential_19_lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0у
1sequential_19/lstm_26/while/lstm_cell_34/MatMul_1MatMul)sequential_19_lstm_26_while_placeholder_2Hsequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџр
,sequential_19/lstm_26/while/lstm_cell_34/addAddV29sequential_19/lstm_26/while/lstm_cell_34/MatMul:product:0;sequential_19/lstm_26/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЧ
?sequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOpJsequential_19_lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0щ
0sequential_19/lstm_26/while/lstm_cell_34/BiasAddBiasAdd0sequential_19/lstm_26/while/lstm_cell_34/add:z:0Gsequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
8sequential_19/lstm_26/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
.sequential_19/lstm_26/while/lstm_cell_34/splitSplitAsequential_19/lstm_26/while/lstm_cell_34/split/split_dim:output:09sequential_19/lstm_26/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitІ
0sequential_19/lstm_26/while/lstm_cell_34/SigmoidSigmoid7sequential_19/lstm_26/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ј
2sequential_19/lstm_26/while/lstm_cell_34/Sigmoid_1Sigmoid7sequential_19/lstm_26/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#Ш
,sequential_19/lstm_26/while/lstm_cell_34/mulMul6sequential_19/lstm_26/while/lstm_cell_34/Sigmoid_1:y:0)sequential_19_lstm_26_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ# 
-sequential_19/lstm_26/while/lstm_cell_34/ReluRelu7sequential_19/lstm_26/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#к
.sequential_19/lstm_26/while/lstm_cell_34/mul_1Mul4sequential_19/lstm_26/while/lstm_cell_34/Sigmoid:y:0;sequential_19/lstm_26/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#Я
.sequential_19/lstm_26/while/lstm_cell_34/add_1AddV20sequential_19/lstm_26/while/lstm_cell_34/mul:z:02sequential_19/lstm_26/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ј
2sequential_19/lstm_26/while/lstm_cell_34/Sigmoid_2Sigmoid7sequential_19/lstm_26/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#
/sequential_19/lstm_26/while/lstm_cell_34/Relu_1Relu2sequential_19/lstm_26/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#о
.sequential_19/lstm_26/while/lstm_cell_34/mul_2Mul6sequential_19/lstm_26/while/lstm_cell_34/Sigmoid_2:y:0=sequential_19/lstm_26/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
Fsequential_19/lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Х
@sequential_19/lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_19_lstm_26_while_placeholder_1Osequential_19/lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_19/lstm_26/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential_19/lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_19/lstm_26/while/addAddV2'sequential_19_lstm_26_while_placeholder*sequential_19/lstm_26/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_19/lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential_19/lstm_26/while/add_1AddV2Dsequential_19_lstm_26_while_sequential_19_lstm_26_while_loop_counter,sequential_19/lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_19/lstm_26/while/IdentityIdentity%sequential_19/lstm_26/while/add_1:z:0!^sequential_19/lstm_26/while/NoOp*
T0*
_output_shapes
: Т
&sequential_19/lstm_26/while/Identity_1IdentityJsequential_19_lstm_26_while_sequential_19_lstm_26_while_maximum_iterations!^sequential_19/lstm_26/while/NoOp*
T0*
_output_shapes
: 
&sequential_19/lstm_26/while/Identity_2Identity#sequential_19/lstm_26/while/add:z:0!^sequential_19/lstm_26/while/NoOp*
T0*
_output_shapes
: Ш
&sequential_19/lstm_26/while/Identity_3IdentityPsequential_19/lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_19/lstm_26/while/NoOp*
T0*
_output_shapes
: Л
&sequential_19/lstm_26/while/Identity_4Identity2sequential_19/lstm_26/while/lstm_cell_34/mul_2:z:0!^sequential_19/lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Л
&sequential_19/lstm_26/while/Identity_5Identity2sequential_19/lstm_26/while/lstm_cell_34/add_1:z:0!^sequential_19/lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Ј
 sequential_19/lstm_26/while/NoOpNoOp@^sequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp?^sequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpA^sequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_19_lstm_26_while_identity-sequential_19/lstm_26/while/Identity:output:0"Y
&sequential_19_lstm_26_while_identity_1/sequential_19/lstm_26/while/Identity_1:output:0"Y
&sequential_19_lstm_26_while_identity_2/sequential_19/lstm_26/while/Identity_2:output:0"Y
&sequential_19_lstm_26_while_identity_3/sequential_19/lstm_26/while/Identity_3:output:0"Y
&sequential_19_lstm_26_while_identity_4/sequential_19/lstm_26/while/Identity_4:output:0"Y
&sequential_19_lstm_26_while_identity_5/sequential_19/lstm_26/while/Identity_5:output:0"
Hsequential_19_lstm_26_while_lstm_cell_34_biasadd_readvariableop_resourceJsequential_19_lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0"
Isequential_19_lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resourceKsequential_19_lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0"
Gsequential_19_lstm_26_while_lstm_cell_34_matmul_readvariableop_resourceIsequential_19_lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0"
Asequential_19_lstm_26_while_sequential_19_lstm_26_strided_slice_1Csequential_19_lstm_26_while_sequential_19_lstm_26_strided_slice_1_0"
}sequential_19_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_26_tensorarrayunstack_tensorlistfromtensorsequential_19_lstm_26_while_tensorarrayv2read_tensorlistgetitem_sequential_19_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2
?sequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp?sequential_19/lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp2
>sequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp>sequential_19/lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp2
@sequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp@sequential_19/lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
н

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703214

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	#.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_1
щB
а

lstm_26_while_body_702231,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3+
'lstm_26_while_lstm_26_strided_slice_1_0g
clstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0:	P
=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#K
<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0:	
lstm_26_while_identity
lstm_26_while_identity_1
lstm_26_while_identity_2
lstm_26_while_identity_3
lstm_26_while_identity_4
lstm_26_while_identity_5)
%lstm_26_while_lstm_26_strided_slice_1e
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorL
9lstm_26_while_lstm_cell_34_matmul_readvariableop_resource:	N
;lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource:	#I
:lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpЂ0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpЂ2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp
?lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0lstm_26_while_placeholderHlstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_26/while/lstm_cell_34/MatMulMatMul8lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Й
#lstm_26/while/lstm_cell_34/MatMul_1MatMullstm_26_while_placeholder_2:lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_26/while/lstm_cell_34/addAddV2+lstm_26/while/lstm_cell_34/MatMul:product:0-lstm_26/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_26/while/lstm_cell_34/BiasAddBiasAdd"lstm_26/while/lstm_cell_34/add:z:09lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_26/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_26/while/lstm_cell_34/splitSplit3lstm_26/while/lstm_cell_34/split/split_dim:output:0+lstm_26/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_split
"lstm_26/while/lstm_cell_34/SigmoidSigmoid)lstm_26/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
$lstm_26/while/lstm_cell_34/Sigmoid_1Sigmoid)lstm_26/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/lstm_cell_34/mulMul(lstm_26/while/lstm_cell_34/Sigmoid_1:y:0lstm_26_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/lstm_cell_34/ReluRelu)lstm_26/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#А
 lstm_26/while/lstm_cell_34/mul_1Mul&lstm_26/while/lstm_cell_34/Sigmoid:y:0-lstm_26/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ѕ
 lstm_26/while/lstm_cell_34/add_1AddV2"lstm_26/while/lstm_cell_34/mul:z:0$lstm_26/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
$lstm_26/while/lstm_cell_34/Sigmoid_2Sigmoid)lstm_26/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#
!lstm_26/while/lstm_cell_34/Relu_1Relu$lstm_26/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Д
 lstm_26/while/lstm_cell_34/mul_2Mul(lstm_26/while/lstm_cell_34/Sigmoid_2:y:0/lstm_26/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#z
8lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_26_while_placeholder_1Alstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_26/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_26/while/addAddV2lstm_26_while_placeholderlstm_26/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_26/while/add_1AddV2(lstm_26_while_lstm_26_while_loop_counterlstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_26/while/IdentityIdentitylstm_26/while/add_1:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_1Identity.lstm_26_while_lstm_26_while_maximum_iterations^lstm_26/while/NoOp*
T0*
_output_shapes
: q
lstm_26/while/Identity_2Identitylstm_26/while/add:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_3IdentityBlstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_4Identity$lstm_26/while/lstm_cell_34/mul_2:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/Identity_5Identity$lstm_26/while/lstm_cell_34/add_1:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#№
lstm_26/while/NoOpNoOp2^lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp1^lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp3^lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_26_while_identitylstm_26/while/Identity:output:0"=
lstm_26_while_identity_1!lstm_26/while/Identity_1:output:0"=
lstm_26_while_identity_2!lstm_26/while/Identity_2:output:0"=
lstm_26_while_identity_3!lstm_26/while/Identity_3:output:0"=
lstm_26_while_identity_4!lstm_26/while/Identity_4:output:0"=
lstm_26_while_identity_5!lstm_26/while/Identity_5:output:0"P
%lstm_26_while_lstm_26_strided_slice_1'lstm_26_while_lstm_26_strided_slice_1_0"z
:lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0"|
;lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0"x
9lstm_26_while_lstm_cell_34_matmul_readvariableop_resource;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0"Ш
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2f
1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp2d
0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp2h
2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
ЉK

C__inference_lstm_26_layer_call_and_return_conditional_losses_703097

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_703012*
condR
while_cond_703011*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ь
ј
.__inference_sequential_19_layer_call_fn_702090
lstm_26_input
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_702062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
щB
а

lstm_26_while_body_702382,
(lstm_26_while_lstm_26_while_loop_counter2
.lstm_26_while_lstm_26_while_maximum_iterations
lstm_26_while_placeholder
lstm_26_while_placeholder_1
lstm_26_while_placeholder_2
lstm_26_while_placeholder_3+
'lstm_26_while_lstm_26_strided_slice_1_0g
clstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0:	P
=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#K
<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0:	
lstm_26_while_identity
lstm_26_while_identity_1
lstm_26_while_identity_2
lstm_26_while_identity_3
lstm_26_while_identity_4
lstm_26_while_identity_5)
%lstm_26_while_lstm_26_strided_slice_1e
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorL
9lstm_26_while_lstm_cell_34_matmul_readvariableop_resource:	N
;lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource:	#I
:lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpЂ0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpЂ2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp
?lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
1lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0lstm_26_while_placeholderHlstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0­
0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0в
!lstm_26/while/lstm_cell_34/MatMulMatMul8lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Й
#lstm_26/while/lstm_cell_34/MatMul_1MatMullstm_26_while_placeholder_2:lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЖ
lstm_26/while/lstm_cell_34/addAddV2+lstm_26/while/lstm_cell_34/MatMul:product:0-lstm_26/while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЋ
1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0П
"lstm_26/while/lstm_cell_34/BiasAddBiasAdd"lstm_26/while/lstm_cell_34/add:z:09lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџl
*lstm_26/while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_26/while/lstm_cell_34/splitSplit3lstm_26/while/lstm_cell_34/split/split_dim:output:0+lstm_26/while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_split
"lstm_26/while/lstm_cell_34/SigmoidSigmoid)lstm_26/while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
$lstm_26/while/lstm_cell_34/Sigmoid_1Sigmoid)lstm_26/while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/lstm_cell_34/mulMul(lstm_26/while/lstm_cell_34/Sigmoid_1:y:0lstm_26_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/lstm_cell_34/ReluRelu)lstm_26/while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#А
 lstm_26/while/lstm_cell_34/mul_1Mul&lstm_26/while/lstm_cell_34/Sigmoid:y:0-lstm_26/while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ѕ
 lstm_26/while/lstm_cell_34/add_1AddV2"lstm_26/while/lstm_cell_34/mul:z:0$lstm_26/while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
$lstm_26/while/lstm_cell_34/Sigmoid_2Sigmoid)lstm_26/while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#
!lstm_26/while/lstm_cell_34/Relu_1Relu$lstm_26/while/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Д
 lstm_26/while/lstm_cell_34/mul_2Mul(lstm_26/while/lstm_cell_34/Sigmoid_2:y:0/lstm_26/while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#z
8lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
2lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_26_while_placeholder_1Alstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_26/while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвU
lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_26/while/addAddV2lstm_26_while_placeholderlstm_26/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_26/while/add_1AddV2(lstm_26_while_lstm_26_while_loop_counterlstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_26/while/IdentityIdentitylstm_26/while/add_1:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_1Identity.lstm_26_while_lstm_26_while_maximum_iterations^lstm_26/while/NoOp*
T0*
_output_shapes
: q
lstm_26/while/Identity_2Identitylstm_26/while/add:z:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_3IdentityBlstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_26/while/NoOp*
T0*
_output_shapes
: 
lstm_26/while/Identity_4Identity$lstm_26/while/lstm_cell_34/mul_2:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/while/Identity_5Identity$lstm_26/while/lstm_cell_34/add_1:z:0^lstm_26/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#№
lstm_26/while/NoOpNoOp2^lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp1^lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp3^lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_26_while_identitylstm_26/while/Identity:output:0"=
lstm_26_while_identity_1!lstm_26/while/Identity_1:output:0"=
lstm_26_while_identity_2!lstm_26/while/Identity_2:output:0"=
lstm_26_while_identity_3!lstm_26/while/Identity_3:output:0"=
lstm_26_while_identity_4!lstm_26/while/Identity_4:output:0"=
lstm_26_while_identity_5!lstm_26/while/Identity_5:output:0"P
%lstm_26_while_lstm_26_strided_slice_1'lstm_26_while_lstm_26_strided_slice_1_0"z
:lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource<lstm_26_while_lstm_cell_34_biasadd_readvariableop_resource_0"|
;lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource=lstm_26_while_lstm_cell_34_matmul_1_readvariableop_resource_0"x
9lstm_26_while_lstm_cell_34_matmul_readvariableop_resource;lstm_26_while_lstm_cell_34_matmul_readvariableop_resource_0"Ш
alstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensorclstm_26_while_tensorarrayv2read_tensorlistgetitem_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2f
1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp1lstm_26/while/lstm_cell_34/BiasAdd/ReadVariableOp2d
0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp0lstm_26/while/lstm_cell_34/MatMul/ReadVariableOp2h
2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp2lstm_26/while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
г
д
I__inference_sequential_19_layer_call_and_return_conditional_losses_702062

inputs!
lstm_26_702049:	!
lstm_26_702051:	#
lstm_26_702053:	!
dense_18_702056:#
dense_18_702058:
identityЂ dense_18/StatefulPartitionedCallЂlstm_26/StatefulPartitionedCallў
lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputslstm_26_702049lstm_26_702051lstm_26_702053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_702020
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_18_702056dense_18_702058*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_701832x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї
Е
(__inference_lstm_26_layer_call_fn_702517

inputs
unknown:	
	unknown_0:	#
	unknown_1:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_702020o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
з\

I__inference_sequential_19_layer_call_and_return_conditional_losses_702322

inputsF
3lstm_26_lstm_cell_34_matmul_readvariableop_resource:	H
5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource:	#C
4lstm_26_lstm_cell_34_biasadd_readvariableop_resource:	9
'dense_18_matmul_readvariableop_resource:#6
(dense_18_biasadd_readvariableop_resource:
identityЂdense_18/BiasAdd/ReadVariableOpЂdense_18/MatMul/ReadVariableOpЂ+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpЂ*lstm_26/lstm_cell_34/MatMul/ReadVariableOpЂ,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpЂlstm_26/whileC
lstm_26/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#Z
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#k
lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_26/transpose	Transposeinputslstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџT
lstm_26/Shape_1Shapelstm_26/transpose:y:0*
T0*
_output_shapes
:g
lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_26/strided_slice_1StridedSlicelstm_26/Shape_1:output:0&lstm_26/strided_slice_1/stack:output:0(lstm_26/strided_slice_1/stack_1:output:0(lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЬ
lstm_26/TensorArrayV2TensorListReserve,lstm_26/TensorArrayV2/element_shape:output:0 lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
=lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ј
/lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_26/transpose:y:0Flstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвg
lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_26/strided_slice_2StridedSlicelstm_26/transpose:y:0&lstm_26/strided_slice_2/stack:output:0(lstm_26/strided_slice_2/stack_1:output:0(lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
*lstm_26/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3lstm_26_lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
lstm_26/lstm_cell_34/MatMulMatMul lstm_26/strided_slice_2:output:02lstm_26/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЃ
,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0Ј
lstm_26/lstm_cell_34/MatMul_1MatMullstm_26/zeros:output:04lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
lstm_26/lstm_cell_34/addAddV2%lstm_26/lstm_cell_34/MatMul:product:0'lstm_26/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
lstm_26/lstm_cell_34/BiasAddBiasAddlstm_26/lstm_cell_34/add:z:03lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџf
$lstm_26/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_26/lstm_cell_34/splitSplit-lstm_26/lstm_cell_34/split/split_dim:output:0%lstm_26/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_split~
lstm_26/lstm_cell_34/SigmoidSigmoid#lstm_26/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/Sigmoid_1Sigmoid#lstm_26/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/mulMul"lstm_26/lstm_cell_34/Sigmoid_1:y:0lstm_26/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#x
lstm_26/lstm_cell_34/ReluRelu#lstm_26/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/mul_1Mul lstm_26/lstm_cell_34/Sigmoid:y:0'lstm_26/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/add_1AddV2lstm_26/lstm_cell_34/mul:z:0lstm_26/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_26/lstm_cell_34/Sigmoid_2Sigmoid#lstm_26/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#u
lstm_26/lstm_cell_34/Relu_1Relulstm_26/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#Ђ
lstm_26/lstm_cell_34/mul_2Mul"lstm_26/lstm_cell_34/Sigmoid_2:y:0)lstm_26/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#v
%lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   f
$lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_26/TensorArrayV2_1TensorListReserve.lstm_26/TensorArrayV2_1/element_shape:output:0-lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвN
lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ\
lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ђ
lstm_26/whileWhile#lstm_26/while/loop_counter:output:0)lstm_26/while/maximum_iterations:output:0lstm_26/time:output:0 lstm_26/TensorArrayV2_1:handle:0lstm_26/zeros:output:0lstm_26/zeros_1:output:0 lstm_26/strided_slice_1:output:0?lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_26_lstm_cell_34_matmul_readvariableop_resource5lstm_26_lstm_cell_34_matmul_1_readvariableop_resource4lstm_26_lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_26_while_body_702231*%
condR
lstm_26_while_cond_702230*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
8lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ю
*lstm_26/TensorArrayV2Stack/TensorListStackTensorListStacklstm_26/while:output:3Alstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsp
lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџi
lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
lstm_26/strided_slice_3StridedSlice3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_26/strided_slice_3/stack:output:0(lstm_26/strided_slice_3/stack_1:output:0(lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maskm
lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ў
lstm_26/transpose_1	Transpose3lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_26/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#c
lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0
dense_18/MatMulMatMul lstm_26/strided_slice_3:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_18/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЃ
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp,^lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp+^lstm_26/lstm_cell_34/MatMul/ReadVariableOp-^lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp^lstm_26/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2Z
+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp+lstm_26/lstm_cell_34/BiasAdd/ReadVariableOp2X
*lstm_26/lstm_cell_34/MatMul/ReadVariableOp*lstm_26/lstm_cell_34/MatMul/ReadVariableOp2\
,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp,lstm_26/lstm_cell_34/MatMul_1/ReadVariableOp2
lstm_26/whilelstm_26/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
У
while_cond_702576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_702576___redundant_placeholder04
0while_while_cond_702576___redundant_placeholder14
0while_while_cond_702576___redundant_placeholder24
0while_while_cond_702576___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
Е
У
while_cond_701934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_701934___redundant_placeholder04
0while_while_cond_701934___redundant_placeholder14
0while_while_cond_701934___redundant_placeholder24
0while_while_cond_701934___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
Ј9
а
while_body_701729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
н

H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703182

inputs
states_0
states_11
matmul_readvariableop_resource:	3
 matmul_1_readvariableop_resource:	#.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ#:џџџџџџџџџ#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ#
"
_user_specified_name
states_1
іT
с
"__inference__traced_restore_703361
file_prefix2
 assignvariableop_dense_18_kernel:#.
 assignvariableop_1_dense_18_bias:A
.assignvariableop_2_lstm_26_lstm_cell_34_kernel:	K
8assignvariableop_3_lstm_26_lstm_cell_34_recurrent_kernel:	#;
,assignvariableop_4_lstm_26_lstm_cell_34_bias:	&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: H
5assignvariableop_7_adam_m_lstm_26_lstm_cell_34_kernel:	H
5assignvariableop_8_adam_v_lstm_26_lstm_cell_34_kernel:	R
?assignvariableop_9_adam_m_lstm_26_lstm_cell_34_recurrent_kernel:	#S
@assignvariableop_10_adam_v_lstm_26_lstm_cell_34_recurrent_kernel:	#C
4assignvariableop_11_adam_m_lstm_26_lstm_cell_34_bias:	C
4assignvariableop_12_adam_v_lstm_26_lstm_cell_34_bias:	<
*assignvariableop_13_adam_m_dense_18_kernel:#<
*assignvariableop_14_adam_v_dense_18_kernel:#6
(assignvariableop_15_adam_m_dense_18_bias:6
(assignvariableop_16_adam_v_dense_18_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: 
identity_20ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Х
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсBоB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOp.assignvariableop_2_lstm_26_lstm_cell_34_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_3AssignVariableOp8assignvariableop_3_lstm_26_lstm_cell_34_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_4AssignVariableOp,assignvariableop_4_lstm_26_lstm_cell_34_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_7AssignVariableOp5assignvariableop_7_adam_m_lstm_26_lstm_cell_34_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_8AssignVariableOp5assignvariableop_8_adam_v_lstm_26_lstm_cell_34_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_9AssignVariableOp?assignvariableop_9_adam_m_lstm_26_lstm_cell_34_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_10AssignVariableOp@assignvariableop_10_adam_v_lstm_26_lstm_cell_34_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_11AssignVariableOp4assignvariableop_11_adam_m_lstm_26_lstm_cell_34_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_12AssignVariableOp4assignvariableop_12_adam_v_lstm_26_lstm_cell_34_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_dense_18_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_dense_18_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_dense_18_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_dense_18_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ё
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: о
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ь
ј
.__inference_sequential_19_layer_call_fn_701852
lstm_26_input
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_701839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
з
ё
.__inference_sequential_19_layer_call_fn_702171

inputs
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_702062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ј9
а
while_body_703012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
Ј9
а
while_body_702867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_34_matmul_readvariableop_resource_0:	H
5while_lstm_cell_34_matmul_1_readvariableop_resource_0:	#C
4while_lstm_cell_34_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_34_matmul_readvariableop_resource:	F
3while_lstm_cell_34_matmul_1_readvariableop_resource:	#A
2while_lstm_cell_34_biasadd_readvariableop_resource:	Ђ)while/lstm_cell_34/BiasAdd/ReadVariableOpЂ(while/lstm_cell_34/MatMul/ReadVariableOpЂ*while/lstm_cell_34/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_34/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0К
while/lstm_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЁ
*while/lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	#*
dtype0Ё
while/lstm_cell_34/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell_34/addAddV2#while/lstm_cell_34/MatMul:product:0%while/lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
)while/lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_34_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ї
while/lstm_cell_34/BiasAddBiasAddwhile/lstm_cell_34/add:z:01while/lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"while/lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_34/splitSplit+while/lstm_cell_34/split/split_dim:output:0#while/lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitz
while/lstm_cell_34/SigmoidSigmoid!while/lstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_1Sigmoid!while/lstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mulMul while/lstm_cell_34/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ#t
while/lstm_cell_34/ReluRelu!while/lstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_1Mulwhile/lstm_cell_34/Sigmoid:y:0%while/lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/add_1AddV2while/lstm_cell_34/mul:z:0while/lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#|
while/lstm_cell_34/Sigmoid_2Sigmoid!while/lstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#q
while/lstm_cell_34/Relu_1Reluwhile/lstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
while/lstm_cell_34/mul_2Mul while/lstm_cell_34/Sigmoid_2:y:0'while/lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_34/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_34/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#y
while/Identity_5Identitywhile/lstm_cell_34/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#а

while/NoOpNoOp*^while/lstm_cell_34/BiasAdd/ReadVariableOp)^while/lstm_cell_34/MatMul/ReadVariableOp+^while/lstm_cell_34/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_34_biasadd_readvariableop_resource4while_lstm_cell_34_biasadd_readvariableop_resource_0"l
3while_lstm_cell_34_matmul_1_readvariableop_resource5while_lstm_cell_34_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_34_matmul_readvariableop_resource3while_lstm_cell_34_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : 2V
)while/lstm_cell_34/BiasAdd/ReadVariableOp)while/lstm_cell_34/BiasAdd/ReadVariableOp2T
(while/lstm_cell_34/MatMul/ReadVariableOp(while/lstm_cell_34/MatMul/ReadVariableOp2X
*while/lstm_cell_34/MatMul_1/ReadVariableOp*while/lstm_cell_34/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
: 
ш
л
I__inference_sequential_19_layer_call_and_return_conditional_losses_702122
lstm_26_input!
lstm_26_702109:	!
lstm_26_702111:	#
lstm_26_702113:	!
dense_18_702116:#
dense_18_702118:
identityЂ dense_18/StatefulPartitionedCallЂlstm_26/StatefulPartitionedCall
lstm_26/StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputlstm_26_702109lstm_26_702111lstm_26_702113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_702020
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_18_702116dense_18_702118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_701832x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
Е
У
while_cond_703011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_703011___redundant_placeholder04
0while_while_cond_703011___redundant_placeholder14
0while_while_cond_703011___redundant_placeholder24
0while_while_cond_703011___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:
Ч	
ѕ
D__inference_dense_18_layer_call_and_return_conditional_losses_703116

inputs0
matmul_readvariableop_resource:#-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ#
 
_user_specified_nameinputs
ш
л
I__inference_sequential_19_layer_call_and_return_conditional_losses_702106
lstm_26_input!
lstm_26_702093:	!
lstm_26_702095:	#
lstm_26_702097:	!
dense_18_702100:#
dense_18_702102:
identityЂ dense_18/StatefulPartitionedCallЂlstm_26/StatefulPartitionedCall
lstm_26/StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputlstm_26_702093lstm_26_702095lstm_26_702097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_701814
 dense_18/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_18_702100dense_18_702102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_701832x
IdentityIdentity)dense_18/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_18/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:Z V
+
_output_shapes
:џџџџџџџџџ
'
_user_specified_namelstm_26_input
з
ё
.__inference_sequential_19_layer_call_fn_702156

inputs
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_701839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЉK

C__inference_lstm_26_layer_call_and_return_conditional_losses_702952

inputs>
+lstm_cell_34_matmul_readvariableop_resource:	@
-lstm_cell_34_matmul_1_readvariableop_resource:	#;
,lstm_cell_34_biasadd_readvariableop_resource:	
identityЂ#lstm_cell_34/BiasAdd/ReadVariableOpЂ"lstm_cell_34/MatMul/ReadVariableOpЂ$lstm_cell_34/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_34/MatMul/ReadVariableOpReadVariableOp+lstm_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_34/MatMulMatMulstrided_slice_2:output:0*lstm_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
$lstm_cell_34/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	#*
dtype0
lstm_cell_34/MatMul_1MatMulzeros:output:0,lstm_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_34/addAddV2lstm_cell_34/MatMul:product:0lstm_cell_34/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
#lstm_cell_34/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_34/BiasAddBiasAddlstm_cell_34/add:z:0+lstm_cell_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ^
lstm_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_34/splitSplit%lstm_cell_34/split/split_dim:output:0lstm_cell_34/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#:џџџџџџџџџ#*
	num_splitn
lstm_cell_34/SigmoidSigmoidlstm_cell_34/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_1Sigmoidlstm_cell_34/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ#w
lstm_cell_34/mulMullstm_cell_34/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ#h
lstm_cell_34/ReluRelulstm_cell_34/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_1Mullstm_cell_34/Sigmoid:y:0lstm_cell_34/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#{
lstm_cell_34/add_1AddV2lstm_cell_34/mul:z:0lstm_cell_34/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#p
lstm_cell_34/Sigmoid_2Sigmoidlstm_cell_34/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ#e
lstm_cell_34/Relu_1Relulstm_cell_34/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ#
lstm_cell_34/mul_2Mullstm_cell_34/Sigmoid_2:y:0!lstm_cell_34/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_34_matmul_readvariableop_resource-lstm_cell_34_matmul_1_readvariableop_resource,lstm_cell_34_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_702867*
condR
while_cond_702866*K
output_shapes:
8: : : : :џџџџџџџџџ#:џџџџџџџџџ#: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ#   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ#*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ#Р
NoOpNoOp$^lstm_cell_34/BiasAdd/ReadVariableOp#^lstm_cell_34/MatMul/ReadVariableOp%^lstm_cell_34/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_34/BiasAdd/ReadVariableOp#lstm_cell_34/BiasAdd/ReadVariableOp2H
"lstm_cell_34/MatMul/ReadVariableOp"lstm_cell_34/MatMul/ReadVariableOp2L
$lstm_cell_34/MatMul_1/ReadVariableOp$lstm_cell_34/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ћ
'sequential_19_lstm_26_while_cond_701217H
Dsequential_19_lstm_26_while_sequential_19_lstm_26_while_loop_counterN
Jsequential_19_lstm_26_while_sequential_19_lstm_26_while_maximum_iterations+
'sequential_19_lstm_26_while_placeholder-
)sequential_19_lstm_26_while_placeholder_1-
)sequential_19_lstm_26_while_placeholder_2-
)sequential_19_lstm_26_while_placeholder_3J
Fsequential_19_lstm_26_while_less_sequential_19_lstm_26_strided_slice_1`
\sequential_19_lstm_26_while_sequential_19_lstm_26_while_cond_701217___redundant_placeholder0`
\sequential_19_lstm_26_while_sequential_19_lstm_26_while_cond_701217___redundant_placeholder1`
\sequential_19_lstm_26_while_sequential_19_lstm_26_while_cond_701217___redundant_placeholder2`
\sequential_19_lstm_26_while_sequential_19_lstm_26_while_cond_701217___redundant_placeholder3(
$sequential_19_lstm_26_while_identity
К
 sequential_19/lstm_26/while/LessLess'sequential_19_lstm_26_while_placeholderFsequential_19_lstm_26_while_less_sequential_19_lstm_26_strided_slice_1*
T0*
_output_shapes
: w
$sequential_19/lstm_26/while/IdentityIdentity$sequential_19/lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_19_lstm_26_while_identity-sequential_19/lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ#:џџџџџџџџџ#: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ#:-)
'
_output_shapes
:џџџџџџџџџ#:

_output_shapes
: :

_output_shapes
:"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
K
lstm_26_input:
serving_default_lstm_26_input:0џџџџџџџџџ<
dense_180
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Т
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
%trace_0
&trace_1
'trace_2
(trace_32
.__inference_sequential_19_layer_call_fn_701852
.__inference_sequential_19_layer_call_fn_702156
.__inference_sequential_19_layer_call_fn_702171
.__inference_sequential_19_layer_call_fn_702090П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z%trace_0z&trace_1z'trace_2z(trace_3
й
)trace_0
*trace_1
+trace_2
,trace_32ю
I__inference_sequential_19_layer_call_and_return_conditional_losses_702322
I__inference_sequential_19_layer_call_and_return_conditional_losses_702473
I__inference_sequential_19_layer_call_and_return_conditional_losses_702106
I__inference_sequential_19_layer_call_and_return_conditional_losses_702122П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z)trace_0z*trace_1z+trace_2z,trace_3
вBЯ
!__inference__wrapped_model_701309lstm_26_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla"
experimentalOptimizer
,
4serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ъ
;trace_0
<trace_1
=trace_2
>trace_32џ
(__inference_lstm_26_layer_call_fn_702484
(__inference_lstm_26_layer_call_fn_702495
(__inference_lstm_26_layer_call_fn_702506
(__inference_lstm_26_layer_call_fn_702517д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z;trace_0z<trace_1z=trace_2z>trace_3
ж
?trace_0
@trace_1
Atrace_2
Btrace_32ы
C__inference_lstm_26_layer_call_and_return_conditional_losses_702662
C__inference_lstm_26_layer_call_and_return_conditional_losses_702807
C__inference_lstm_26_layer_call_and_return_conditional_losses_702952
C__inference_lstm_26_layer_call_and_return_conditional_losses_703097д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
"
_generic_user_object
ј
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
Ptrace_02а
)__inference_dense_18_layer_call_fn_703106Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zPtrace_0

Qtrace_02ы
D__inference_dense_18_layer_call_and_return_conditional_losses_703116Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zQtrace_0
!:#2dense_18/kernel
:2dense_18/bias
.:,	2lstm_26/lstm_cell_34/kernel
8:6	#2%lstm_26/lstm_cell_34/recurrent_kernel
(:&2lstm_26/lstm_cell_34/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
R0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_19_layer_call_fn_701852lstm_26_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_19_layer_call_fn_702156inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_19_layer_call_fn_702171inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_sequential_19_layer_call_fn_702090lstm_26_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_19_layer_call_and_return_conditional_losses_702322inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_19_layer_call_and_return_conditional_losses_702473inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЁB
I__inference_sequential_19_layer_call_and_return_conditional_losses_702106lstm_26_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЁB
I__inference_sequential_19_layer_call_and_return_conditional_losses_702122lstm_26_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
n
.0
S1
T2
U3
V4
W5
X6
Y7
Z8
[9
\10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
S0
U1
W2
Y3
[4"
trackable_list_wrapper
C
T0
V1
X2
Z3
\4"
trackable_list_wrapper
П2МЙ
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
бBЮ
$__inference_signature_wrapper_702141lstm_26_input"
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
(__inference_lstm_26_layer_call_fn_702484inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_26_layer_call_fn_702495inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_26_layer_call_fn_702506inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_26_layer_call_fn_702517inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
C__inference_lstm_26_layer_call_and_return_conditional_losses_702662inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
C__inference_lstm_26_layer_call_and_return_conditional_losses_702807inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
C__inference_lstm_26_layer_call_and_return_conditional_losses_702952inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
C__inference_lstm_26_layer_call_and_return_conditional_losses_703097inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
е
btrace_0
ctrace_12
-__inference_lstm_cell_34_layer_call_fn_703133
-__inference_lstm_cell_34_layer_call_fn_703150Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zbtrace_0zctrace_1

dtrace_0
etrace_12д
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703182
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703214Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zdtrace_0zetrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
)__inference_dense_18_layer_call_fn_703106inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_18_layer_call_and_return_conditional_losses_703116inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
3:1	2"Adam/m/lstm_26/lstm_cell_34/kernel
3:1	2"Adam/v/lstm_26/lstm_cell_34/kernel
=:;	#2,Adam/m/lstm_26/lstm_cell_34/recurrent_kernel
=:;	#2,Adam/v/lstm_26/lstm_cell_34/recurrent_kernel
-:+2 Adam/m/lstm_26/lstm_cell_34/bias
-:+2 Adam/v/lstm_26/lstm_cell_34/bias
&:$#2Adam/m/dense_18/kernel
&:$#2Adam/v/dense_18/kernel
 :2Adam/m/dense_18/bias
 :2Adam/v/dense_18/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_lstm_cell_34_layer_call_fn_703133inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
-__inference_lstm_cell_34_layer_call_fn_703150inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703182inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703214inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
!__inference__wrapped_model_701309x:Ђ7
0Ђ-
+(
lstm_26_inputџџџџџџџџџ
Њ "3Њ0
.
dense_18"
dense_18џџџџџџџџџЋ
D__inference_dense_18_layer_call_and_return_conditional_losses_703116c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ#
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dense_18_layer_call_fn_703106X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ#
Њ "!
unknownџџџџџџџџџЬ
C__inference_lstm_26_layer_call_and_return_conditional_losses_702662OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ#
 Ь
C__inference_lstm_26_layer_call_and_return_conditional_losses_702807OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ#
 Л
C__inference_lstm_26_layer_call_and_return_conditional_losses_702952t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ#
 Л
C__inference_lstm_26_layer_call_and_return_conditional_losses_703097t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ#
 Ѕ
(__inference_lstm_26_layer_call_fn_702484yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ#Ѕ
(__inference_lstm_26_layer_call_fn_702495yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџ#
(__inference_lstm_26_layer_call_fn_702506i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ#
(__inference_lstm_26_layer_call_fn_702517i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџ#с
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703182Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ#
"
states_1џџџџџџџџџ#
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ#
SP
&#
tensor_0_1_0џџџџџџџџџ#
&#
tensor_0_1_1џџџџџџџџџ#
 с
H__inference_lstm_cell_34_layer_call_and_return_conditional_losses_703214Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ#
"
states_1џџџџџџџџџ#
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ#
SP
&#
tensor_0_1_0џџџџџџџџџ#
&#
tensor_0_1_1џџџџџџџџџ#
 Д
-__inference_lstm_cell_34_layer_call_fn_703133Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ#
"
states_1џџџџџџџџџ#
p 
Њ "xЂu
"
tensor_0џџџџџџџџџ#
OL
$!

tensor_1_0џџџџџџџџџ#
$!

tensor_1_1џџџџџџџџџ#Д
-__inference_lstm_cell_34_layer_call_fn_703150Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ#
"
states_1џџџџџџџџџ#
p
Њ "xЂu
"
tensor_0џџџџџџџџџ#
OL
$!

tensor_1_0џџџџџџџџџ#
$!

tensor_1_1џџџџџџџџџ#Ц
I__inference_sequential_19_layer_call_and_return_conditional_losses_702106yBЂ?
8Ђ5
+(
lstm_26_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ц
I__inference_sequential_19_layer_call_and_return_conditional_losses_702122yBЂ?
8Ђ5
+(
lstm_26_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
I__inference_sequential_19_layer_call_and_return_conditional_losses_702322r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
I__inference_sequential_19_layer_call_and_return_conditional_losses_702473r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
  
.__inference_sequential_19_layer_call_fn_701852nBЂ?
8Ђ5
+(
lstm_26_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ 
.__inference_sequential_19_layer_call_fn_702090nBЂ?
8Ђ5
+(
lstm_26_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
.__inference_sequential_19_layer_call_fn_702156g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
.__inference_sequential_19_layer_call_fn_702171g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџВ
$__inference_signature_wrapper_702141KЂH
Ђ 
AЊ>
<
lstm_26_input+(
lstm_26_inputџџџџџџџџџ"3Њ0
.
dense_18"
dense_18џџџџџџџџџ