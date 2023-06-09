�#
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
3
Square
x"T
y"T"
Ttype:
2
	
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
|
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
:`*
dtype0
l

conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
conv1/bias
e
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes
:`*
dtype0
j
	bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name	bn1/gamma
c
bn1/gamma/Read/ReadVariableOpReadVariableOp	bn1/gamma*
_output_shapes
:`*
dtype0
h
bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_name
bn1/beta
a
bn1/beta/Read/ReadVariableOpReadVariableOpbn1/beta*
_output_shapes
:`*
dtype0
v
bn1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_namebn1/moving_mean
o
#bn1/moving_mean/Read/ReadVariableOpReadVariableOpbn1/moving_mean*
_output_shapes
:`*
dtype0
~
bn1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*$
shared_namebn1/moving_variance
w
'bn1/moving_variance/Read/ReadVariableOpReadVariableOpbn1/moving_variance*
_output_shapes
:`*
dtype0
}
conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`�*
shared_nameconv2/kernel
v
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*'
_output_shapes
:`�*
dtype0
m

conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
conv2/bias
f
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes	
:�*
dtype0
k
	bn2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	bn2/gamma
d
bn2/gamma/Read/ReadVariableOpReadVariableOp	bn2/gamma*
_output_shapes	
:�*
dtype0
i
bn2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
bn2/beta
b
bn2/beta/Read/ReadVariableOpReadVariableOpbn2/beta*
_output_shapes	
:�*
dtype0
w
bn2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namebn2/moving_mean
p
#bn2/moving_mean/Read/ReadVariableOpReadVariableOpbn2/moving_mean*
_output_shapes	
:�*
dtype0

bn2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namebn2/moving_variance
x
'bn2/moving_variance/Read/ReadVariableOpReadVariableOpbn2/moving_variance*
_output_shapes	
:�*
dtype0
~
conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv3/kernel
w
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*(
_output_shapes
:��*
dtype0
m

conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
conv3/bias
f
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_output_shapes	
:�*
dtype0
k
	bn3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	bn3/gamma
d
bn3/gamma/Read/ReadVariableOpReadVariableOp	bn3/gamma*
_output_shapes	
:�*
dtype0
i
bn3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
bn3/beta
b
bn3/beta/Read/ReadVariableOpReadVariableOpbn3/beta*
_output_shapes	
:�*
dtype0
w
bn3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namebn3/moving_mean
p
#bn3/moving_mean/Read/ReadVariableOpReadVariableOpbn3/moving_mean*
_output_shapes	
:�*
dtype0

bn3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namebn3/moving_variance
x
'bn3/moving_variance/Read/ReadVariableOpReadVariableOpbn3/moving_variance*
_output_shapes	
:�*
dtype0
~
conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv4/kernel
w
 conv4/kernel/Read/ReadVariableOpReadVariableOpconv4/kernel*(
_output_shapes
:��*
dtype0
m

conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
conv4/bias
f
conv4/bias/Read/ReadVariableOpReadVariableOp
conv4/bias*
_output_shapes	
:�*
dtype0
k
	bn4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	bn4/gamma
d
bn4/gamma/Read/ReadVariableOpReadVariableOp	bn4/gamma*
_output_shapes	
:�*
dtype0
i
bn4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
bn4/beta
b
bn4/beta/Read/ReadVariableOpReadVariableOpbn4/beta*
_output_shapes	
:�*
dtype0
w
bn4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namebn4/moving_mean
p
#bn4/moving_mean/Read/ReadVariableOpReadVariableOpbn4/moving_mean*
_output_shapes	
:�*
dtype0

bn4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namebn4/moving_variance
x
'bn4/moving_variance/Read/ReadVariableOpReadVariableOpbn4/moving_variance*
_output_shapes	
:�*
dtype0
~
conv5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv5/kernel
w
 conv5/kernel/Read/ReadVariableOpReadVariableOpconv5/kernel*(
_output_shapes
:��*
dtype0
m

conv5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
conv5/bias
f
conv5/bias/Read/ReadVariableOpReadVariableOp
conv5/bias*
_output_shapes	
:�*
dtype0
k
	bn5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	bn5/gamma
d
bn5/gamma/Read/ReadVariableOpReadVariableOp	bn5/gamma*
_output_shapes	
:�*
dtype0
i
bn5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
bn5/beta
b
bn5/beta/Read/ReadVariableOpReadVariableOpbn5/beta*
_output_shapes	
:�*
dtype0
w
bn5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namebn5/moving_mean
p
#bn5/moving_mean/Read/ReadVariableOpReadVariableOpbn5/moving_mean*
_output_shapes	
:�*
dtype0

bn5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namebn5/moving_variance
x
'bn5/moving_variance/Read/ReadVariableOpReadVariableOpbn5/moving_variance*
_output_shapes	
:�*
dtype0
z

fc6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�� *
shared_name
fc6/kernel
s
fc6/kernel/Read/ReadVariableOpReadVariableOp
fc6/kernel*(
_output_shapes
:	�� *
dtype0
i
fc6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *
shared_name
fc6/bias
b
fc6/bias/Read/ReadVariableOpReadVariableOpfc6/bias*
_output_shapes	
:� *
dtype0
k
	bn6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *
shared_name	bn6/gamma
d
bn6/gamma/Read/ReadVariableOpReadVariableOp	bn6/gamma*
_output_shapes	
:� *
dtype0
i
bn6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *
shared_name
bn6/beta
b
bn6/beta/Read/ReadVariableOpReadVariableOpbn6/beta*
_output_shapes	
:� *
dtype0
w
bn6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:� * 
shared_namebn6/moving_mean
p
#bn6/moving_mean/Read/ReadVariableOpReadVariableOpbn6/moving_mean*
_output_shapes	
:� *
dtype0

bn6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *$
shared_namebn6/moving_variance
x
'bn6/moving_variance/Read/ReadVariableOpReadVariableOpbn6/moving_variance*
_output_shapes	
:� *
dtype0
z

fc7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� �*
shared_name
fc7/kernel
s
fc7/kernel/Read/ReadVariableOpReadVariableOp
fc7/kernel*(
_output_shapes
:� �*
dtype0
i
fc7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
fc7/bias
b
fc7/bias/Read/ReadVariableOpReadVariableOpfc7/bias*
_output_shapes	
:�*
dtype0
k
	bn7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name	bn7/gamma
d
bn7/gamma/Read/ReadVariableOpReadVariableOp	bn7/gamma*
_output_shapes	
:�*
dtype0
i
bn7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
bn7/beta
b
bn7/beta/Read/ReadVariableOpReadVariableOpbn7/beta*
_output_shapes	
:�*
dtype0
w
bn7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namebn7/moving_mean
p
#bn7/moving_mean/Read/ReadVariableOpReadVariableOpbn7/moving_mean*
_output_shapes	
:�*
dtype0

bn7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namebn7/moving_variance
x
'bn7/moving_variance/Read/ReadVariableOpReadVariableOpbn7/moving_variance*
_output_shapes	
:�*
dtype0
z

fc8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_name
fc8/kernel
s
fc8/kernel/Read/ReadVariableOpReadVariableOp
fc8/kernel*(
_output_shapes
:��*
dtype0
i
fc8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
fc8/bias
b
fc8/bias/Read/ReadVariableOpReadVariableOpfc8/bias*
_output_shapes	
:�*
dtype0

NoOpNoOp
ł
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value�B�� B�
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
layer-20
layer-21
layer_with_weights-10
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer-26
layer-27
layer_with_weights-12
layer-28
layer_with_weights-13
layer-29
layer-30
 layer-31
!layer_with_weights-14
!layer-32
"trainable_variables
#regularization_losses
$	variables
%	keras_api
&
signatures
 
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
h

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
�
1axis
	2gamma
3beta
4moving_mean
5moving_variance
6trainable_variables
7regularization_losses
8	variables
9	keras_api
R
:trainable_variables
;regularization_losses
<	variables
=	keras_api
R
>trainable_variables
?regularization_losses
@	variables
A	keras_api
h

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
�
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
R
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
R
Utrainable_variables
Vregularization_losses
W	variables
X	keras_api
h

Ykernel
Zbias
[trainable_variables
\regularization_losses
]	variables
^	keras_api
�
_axis
	`gamma
abeta
bmoving_mean
cmoving_variance
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
R
htrainable_variables
iregularization_losses
j	variables
k	keras_api
R
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
h

pkernel
qbias
rtrainable_variables
sregularization_losses
t	variables
u	keras_api
�
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{trainable_variables
|regularization_losses
}	variables
~	keras_api
U
trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
n
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
n
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
n
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
n
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�
+0
,1
22
33
B4
C5
I6
J7
Y8
Z9
`10
a11
p12
q13
w14
x15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
 
�
+0
,1
22
33
44
55
B6
C7
I8
J9
K10
L11
Y12
Z13
`14
a15
b16
c17
p18
q19
w20
x21
y22
z23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�
�layers
 �layer_regularization_losses
"trainable_variables
�layer_metrics
#regularization_losses
$	variables
�metrics
�non_trainable_variables
 
 
 
 
�
�layers
 �layer_regularization_losses
'trainable_variables
�layer_metrics
(regularization_losses
)	variables
�metrics
�non_trainable_variables
XV
VARIABLE_VALUEconv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
�layers
 �layer_regularization_losses
-trainable_variables
�layer_metrics
.regularization_losses
/	variables
�metrics
�non_trainable_variables
 
TR
VARIABLE_VALUE	bn1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
42
53
�
�layers
 �layer_regularization_losses
6trainable_variables
�layer_metrics
7regularization_losses
8	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
:trainable_variables
�layer_metrics
;regularization_losses
<	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
>trainable_variables
�layer_metrics
?regularization_losses
@	variables
�metrics
�non_trainable_variables
XV
VARIABLE_VALUEconv2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
�
�layers
 �layer_regularization_losses
Dtrainable_variables
�layer_metrics
Eregularization_losses
F	variables
�metrics
�non_trainable_variables
 
TR
VARIABLE_VALUE	bn2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 

I0
J1
K2
L3
�
�layers
 �layer_regularization_losses
Mtrainable_variables
�layer_metrics
Nregularization_losses
O	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
Qtrainable_variables
�layer_metrics
Rregularization_losses
S	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
Utrainable_variables
�layer_metrics
Vregularization_losses
W	variables
�metrics
�non_trainable_variables
XV
VARIABLE_VALUEconv3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

Y0
Z1
 

Y0
Z1
�
�layers
 �layer_regularization_losses
[trainable_variables
�layer_metrics
\regularization_losses
]	variables
�metrics
�non_trainable_variables
 
TR
VARIABLE_VALUE	bn3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

`0
a1
 

`0
a1
b2
c3
�
�layers
 �layer_regularization_losses
dtrainable_variables
�layer_metrics
eregularization_losses
f	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
htrainable_variables
�layer_metrics
iregularization_losses
j	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
ltrainable_variables
�layer_metrics
mregularization_losses
n	variables
�metrics
�non_trainable_variables
XV
VARIABLE_VALUEconv4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

p0
q1
 

p0
q1
�
�layers
 �layer_regularization_losses
rtrainable_variables
�layer_metrics
sregularization_losses
t	variables
�metrics
�non_trainable_variables
 
TR
VARIABLE_VALUE	bn4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

w0
x1
 

w0
x1
y2
z3
�
�layers
 �layer_regularization_losses
{trainable_variables
�layer_metrics
|regularization_losses
}	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
XV
VARIABLE_VALUEconv5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
TR
VARIABLE_VALUE	bn5/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn5/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn5/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn5/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
 
�0
�1
�2
�3
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
WU
VARIABLE_VALUE
fc6/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEfc6/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
US
VARIABLE_VALUE	bn6/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEbn6/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbn6/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEbn6/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
 
�0
�1
�2
�3
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
WU
VARIABLE_VALUE
fc7/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEfc7/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
US
VARIABLE_VALUE	bn7/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEbn7/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbn7/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEbn7/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
 
�0
�1
�2
�3
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
 
 
 
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
WU
VARIABLE_VALUE
fc8/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEfc8/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 

�0
�1
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
 
 
 
l
40
51
K2
L3
b4
c5
y6
z7
�8
�9
�10
�11
�12
�13
 
 
 
 
 
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

b0
c1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

y0
z1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_arrayPlaceholder*9
_output_shapes'
%:#�������������������*
dtype0*.
shape%:#�������������������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_arrayconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_varianceconv4/kernel
conv4/bias	bn4/gammabn4/betabn4/moving_meanbn4/moving_varianceconv5/kernel
conv5/bias	bn5/gammabn5/betabn5/moving_meanbn5/moving_variance
fc6/kernelfc6/bias	bn6/gammabn6/betabn6/moving_meanbn6/moving_variance
fc7/kernelfc7/bias	bn7/gammabn7/betabn7/moving_meanbn7/moving_variance
fc8/kernelfc8/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_signature_wrapper_3122
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv1/kernel/Read/ReadVariableOpconv1/bias/Read/ReadVariableOpbn1/gamma/Read/ReadVariableOpbn1/beta/Read/ReadVariableOp#bn1/moving_mean/Read/ReadVariableOp'bn1/moving_variance/Read/ReadVariableOp conv2/kernel/Read/ReadVariableOpconv2/bias/Read/ReadVariableOpbn2/gamma/Read/ReadVariableOpbn2/beta/Read/ReadVariableOp#bn2/moving_mean/Read/ReadVariableOp'bn2/moving_variance/Read/ReadVariableOp conv3/kernel/Read/ReadVariableOpconv3/bias/Read/ReadVariableOpbn3/gamma/Read/ReadVariableOpbn3/beta/Read/ReadVariableOp#bn3/moving_mean/Read/ReadVariableOp'bn3/moving_variance/Read/ReadVariableOp conv4/kernel/Read/ReadVariableOpconv4/bias/Read/ReadVariableOpbn4/gamma/Read/ReadVariableOpbn4/beta/Read/ReadVariableOp#bn4/moving_mean/Read/ReadVariableOp'bn4/moving_variance/Read/ReadVariableOp conv5/kernel/Read/ReadVariableOpconv5/bias/Read/ReadVariableOpbn5/gamma/Read/ReadVariableOpbn5/beta/Read/ReadVariableOp#bn5/moving_mean/Read/ReadVariableOp'bn5/moving_variance/Read/ReadVariableOpfc6/kernel/Read/ReadVariableOpfc6/bias/Read/ReadVariableOpbn6/gamma/Read/ReadVariableOpbn6/beta/Read/ReadVariableOp#bn6/moving_mean/Read/ReadVariableOp'bn6/moving_variance/Read/ReadVariableOpfc7/kernel/Read/ReadVariableOpfc7/bias/Read/ReadVariableOpbn7/gamma/Read/ReadVariableOpbn7/beta/Read/ReadVariableOp#bn7/moving_mean/Read/ReadVariableOp'bn7/moving_variance/Read/ReadVariableOpfc8/kernel/Read/ReadVariableOpfc8/bias/Read/ReadVariableOpConst*9
Tin2
02.*
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
GPU 2J 8� *&
f!R
__inference__traced_save_5026
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_varianceconv4/kernel
conv4/bias	bn4/gammabn4/betabn4/moving_meanbn4/moving_varianceconv5/kernel
conv5/bias	bn5/gammabn5/betabn5/moving_meanbn5/moving_variance
fc6/kernelfc6/bias	bn6/gammabn6/betabn6/moving_meanbn6/moving_variance
fc7/kernelfc7/bias	bn7/gammabn7/betabn7/moving_meanbn7/moving_variance
fc8/kernelfc8/bias*8
Tin1
/2-*
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
GPU 2J 8� *)
f$R"
 __inference__traced_restore_5168��
�
�
"__inference_bn1_layer_call_fn_3772

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_bn1_layer_call_and_return_conditional_losses_8312
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�	
�
=__inference_fc7_layer_call_and_return_conditional_losses_2304

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:� �*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:���������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
^
B__inference_reshape6_layer_call_and_return_conditional_losses_2285

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :� 2
Reshape/shape/3�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:���������� 2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:���������� 2

Identity"
identityIdentity:output:0*'
_input_shapes
:���������� :P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_4369

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu1_layer_call_and_return_conditional_losses_3854

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#�������������������`2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#�������������������`:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
�
"__inference_signature_wrapper_3122
input_array
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_arrayunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__wrapped_model_7562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_3898

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_2339

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_bn3_layer_call_fn_4163

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn2_layer_call_fn_3942

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_bn2_layer_call_and_return_conditional_losses_9792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
"__inference_bn3_layer_call_fn_4099

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_10962
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
=__inference_fc8_layer_call_and_return_conditional_losses_2451

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_2203

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
�
"__inference_bn5_layer_call_fn_4400

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_12992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_4230

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
[
?__inference_relu1_layer_call_and_return_conditional_losses_1697

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#�������������������`2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#�������������������`:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�T
�
__inference__traced_save_5026
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop(
$savev2_bn1_gamma_read_readvariableop'
#savev2_bn1_beta_read_readvariableop.
*savev2_bn1_moving_mean_read_readvariableop2
.savev2_bn1_moving_variance_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop(
$savev2_bn2_gamma_read_readvariableop'
#savev2_bn2_beta_read_readvariableop.
*savev2_bn2_moving_mean_read_readvariableop2
.savev2_bn2_moving_variance_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop(
$savev2_bn3_gamma_read_readvariableop'
#savev2_bn3_beta_read_readvariableop.
*savev2_bn3_moving_mean_read_readvariableop2
.savev2_bn3_moving_variance_read_readvariableop+
'savev2_conv4_kernel_read_readvariableop)
%savev2_conv4_bias_read_readvariableop(
$savev2_bn4_gamma_read_readvariableop'
#savev2_bn4_beta_read_readvariableop.
*savev2_bn4_moving_mean_read_readvariableop2
.savev2_bn4_moving_variance_read_readvariableop+
'savev2_conv5_kernel_read_readvariableop)
%savev2_conv5_bias_read_readvariableop(
$savev2_bn5_gamma_read_readvariableop'
#savev2_bn5_beta_read_readvariableop.
*savev2_bn5_moving_mean_read_readvariableop2
.savev2_bn5_moving_variance_read_readvariableop)
%savev2_fc6_kernel_read_readvariableop'
#savev2_fc6_bias_read_readvariableop(
$savev2_bn6_gamma_read_readvariableop'
#savev2_bn6_beta_read_readvariableop.
*savev2_bn6_moving_mean_read_readvariableop2
.savev2_bn6_moving_variance_read_readvariableop)
%savev2_fc7_kernel_read_readvariableop'
#savev2_fc7_bias_read_readvariableop(
$savev2_bn7_gamma_read_readvariableop'
#savev2_bn7_beta_read_readvariableop.
*savev2_bn7_moving_mean_read_readvariableop2
.savev2_bn7_moving_variance_read_readvariableop)
%savev2_fc8_kernel_read_readvariableop'
#savev2_fc8_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop$savev2_bn2_gamma_read_readvariableop#savev2_bn2_beta_read_readvariableop*savev2_bn2_moving_mean_read_readvariableop.savev2_bn2_moving_variance_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop$savev2_bn3_gamma_read_readvariableop#savev2_bn3_beta_read_readvariableop*savev2_bn3_moving_mean_read_readvariableop.savev2_bn3_moving_variance_read_readvariableop'savev2_conv4_kernel_read_readvariableop%savev2_conv4_bias_read_readvariableop$savev2_bn4_gamma_read_readvariableop#savev2_bn4_beta_read_readvariableop*savev2_bn4_moving_mean_read_readvariableop.savev2_bn4_moving_variance_read_readvariableop'savev2_conv5_kernel_read_readvariableop%savev2_conv5_bias_read_readvariableop$savev2_bn5_gamma_read_readvariableop#savev2_bn5_beta_read_readvariableop*savev2_bn5_moving_mean_read_readvariableop.savev2_bn5_moving_variance_read_readvariableop%savev2_fc6_kernel_read_readvariableop#savev2_fc6_bias_read_readvariableop$savev2_bn6_gamma_read_readvariableop#savev2_bn6_beta_read_readvariableop*savev2_bn6_moving_mean_read_readvariableop.savev2_bn6_moving_variance_read_readvariableop%savev2_fc7_kernel_read_readvariableop#savev2_fc7_bias_read_readvariableop$savev2_bn7_gamma_read_readvariableop#savev2_bn7_beta_read_readvariableop*savev2_bn7_moving_mean_read_readvariableop.savev2_bn7_moving_variance_read_readvariableop%savev2_fc8_kernel_read_readvariableop#savev2_fc8_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :`:`:`:`:`:`:`�:�:�:�:�:�:��:�:�:�:�:�:��:�:�:�:�:�:��:�:�:�:�:�:	�� :� :� :� :� :� :� �:�:�:�:�:�:��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`: 

_output_shapes
:`:-)
'
_output_shapes
:`�:!

_output_shapes	
:�:!	

_output_shapes	
:�:!


_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:.*
(
_output_shapes
:	�� :! 

_output_shapes	
:� :!!

_output_shapes	
:� :!"

_output_shapes	
:� :!#

_output_shapes	
:� :!$

_output_shapes	
:� :.%*
(
_output_shapes
:� �:!&

_output_shapes	
:�:!'

_output_shapes	
:�:!(

_output_shapes	
:�:!)

_output_shapes	
:�:!*

_output_shapes	
:�:.+*
(
_output_shapes
:��:!,

_output_shapes	
:�:-

_output_shapes
: 
�
�
"__inference_bn7_layer_call_fn_4797

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
?__inference_conv1_layer_call_and_return_conditional_losses_1603

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
<__inference_bn1_layer_call_and_return_conditional_losses_831

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������`:`:`:`:`:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�
�
"__inference_bn7_layer_call_fn_4733

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_15462
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�
@__inference_VGGVox_layer_call_and_return_conditional_losses_3516

inputs(
$conv1_conv2d_readvariableop_resource)
%conv1_biasadd_readvariableop_resource
bn1_readvariableop_resource!
bn1_readvariableop_1_resource0
,bn1_fusedbatchnormv3_readvariableop_resource2
.bn1_fusedbatchnormv3_readvariableop_1_resource(
$conv2_conv2d_readvariableop_resource)
%conv2_biasadd_readvariableop_resource
bn2_readvariableop_resource!
bn2_readvariableop_1_resource0
,bn2_fusedbatchnormv3_readvariableop_resource2
.bn2_fusedbatchnormv3_readvariableop_1_resource(
$conv3_conv2d_readvariableop_resource)
%conv3_biasadd_readvariableop_resource
bn3_readvariableop_resource!
bn3_readvariableop_1_resource0
,bn3_fusedbatchnormv3_readvariableop_resource2
.bn3_fusedbatchnormv3_readvariableop_1_resource(
$conv4_conv2d_readvariableop_resource)
%conv4_biasadd_readvariableop_resource
bn4_readvariableop_resource!
bn4_readvariableop_1_resource0
,bn4_fusedbatchnormv3_readvariableop_resource2
.bn4_fusedbatchnormv3_readvariableop_1_resource(
$conv5_conv2d_readvariableop_resource)
%conv5_biasadd_readvariableop_resource
bn5_readvariableop_resource!
bn5_readvariableop_1_resource0
,bn5_fusedbatchnormv3_readvariableop_resource2
.bn5_fusedbatchnormv3_readvariableop_1_resource&
"fc6_conv2d_readvariableop_resource'
#fc6_biasadd_readvariableop_resource
bn6_readvariableop_resource!
bn6_readvariableop_1_resource0
,bn6_fusedbatchnormv3_readvariableop_resource2
.bn6_fusedbatchnormv3_readvariableop_1_resource&
"fc7_conv2d_readvariableop_resource'
#fc7_biasadd_readvariableop_resource
bn7_readvariableop_resource!
bn7_readvariableop_1_resource0
,bn7_fusedbatchnormv3_readvariableop_resource2
.bn7_fusedbatchnormv3_readvariableop_1_resource&
"fc8_conv2d_readvariableop_resource'
#fc8_biasadd_readvariableop_resource
identity��#bn1/FusedBatchNormV3/ReadVariableOp�%bn1/FusedBatchNormV3/ReadVariableOp_1�bn1/ReadVariableOp�bn1/ReadVariableOp_1�#bn2/FusedBatchNormV3/ReadVariableOp�%bn2/FusedBatchNormV3/ReadVariableOp_1�bn2/ReadVariableOp�bn2/ReadVariableOp_1�#bn3/FusedBatchNormV3/ReadVariableOp�%bn3/FusedBatchNormV3/ReadVariableOp_1�bn3/ReadVariableOp�bn3/ReadVariableOp_1�#bn4/FusedBatchNormV3/ReadVariableOp�%bn4/FusedBatchNormV3/ReadVariableOp_1�bn4/ReadVariableOp�bn4/ReadVariableOp_1�#bn5/FusedBatchNormV3/ReadVariableOp�%bn5/FusedBatchNormV3/ReadVariableOp_1�bn5/ReadVariableOp�bn5/ReadVariableOp_1�#bn6/FusedBatchNormV3/ReadVariableOp�%bn6/FusedBatchNormV3/ReadVariableOp_1�bn6/ReadVariableOp�bn6/ReadVariableOp_1�#bn7/FusedBatchNormV3/ReadVariableOp�%bn7/FusedBatchNormV3/ReadVariableOp_1�bn7/ReadVariableOp�bn7/ReadVariableOp_1�conv1/BiasAdd/ReadVariableOp�conv1/Conv2D/ReadVariableOp�conv2/BiasAdd/ReadVariableOp�conv2/Conv2D/ReadVariableOp�conv3/BiasAdd/ReadVariableOp�conv3/Conv2D/ReadVariableOp�conv4/BiasAdd/ReadVariableOp�conv4/Conv2D/ReadVariableOp�conv5/BiasAdd/ReadVariableOp�conv5/Conv2D/ReadVariableOp�fc6/BiasAdd/ReadVariableOp�fc6/Conv2D/ReadVariableOp�fc7/BiasAdd/ReadVariableOp�fc7/Conv2D/ReadVariableOp�fc8/BiasAdd/ReadVariableOp�fc8/Conv2D/ReadVariableOp�
pad1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad1/Pad/paddings�
pad1/PadPadinputspad1/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������2

pad1/Pad�
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
conv1/Conv2D/ReadVariableOp�
conv1/Conv2DConv2Dpad1/Pad:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`*
paddingVALID*
strides
2
conv1/Conv2D�
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
conv1/BiasAdd/ReadVariableOp�
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`2
conv1/BiasAdd�
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:`*
dtype02
bn1/ReadVariableOp�
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:`*
dtype02
bn1/ReadVariableOp_1�
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02%
#bn1/FusedBatchNormV3/ReadVariableOp�
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02'
%bn1/FusedBatchNormV3/ReadVariableOp_1�
bn1/FusedBatchNormV3FusedBatchNormV3conv1/BiasAdd:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
bn1/FusedBatchNormV3~

relu1/ReluRelubn1/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#�������������������`2

relu1/Relu�
pad2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad2/Pad/paddings�
pad2/PadPadrelu1/Relu:activations:0pad2/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������`2

pad2/Pad�
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*'
_output_shapes
:`�*
dtype02
conv2/Conv2D/ReadVariableOp�
conv2/Conv2DConv2Dpad2/Pad:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv2/Conv2D�
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv2/BiasAdd/ReadVariableOp�
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv2/BiasAdd�
bn2/ReadVariableOpReadVariableOpbn2_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn2/ReadVariableOp�
bn2/ReadVariableOp_1ReadVariableOpbn2_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn2/ReadVariableOp_1�
#bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn2/FusedBatchNormV3/ReadVariableOp�
%bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn2/FusedBatchNormV3/ReadVariableOp_1�
bn2/FusedBatchNormV3FusedBatchNormV3conv2/BiasAdd:output:0bn2/ReadVariableOp:value:0bn2/ReadVariableOp_1:value:0+bn2/FusedBatchNormV3/ReadVariableOp:value:0-bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
bn2/FusedBatchNormV3~

relu2/ReluRelubn2/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu2/Relu�
pad3/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad3/Pad/paddings�
pad3/PadPadrelu2/Relu:activations:0pad3/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad3/Pad�
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv3/Conv2D/ReadVariableOp�
conv3/Conv2DConv2Dpad3/Pad:output:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv3/Conv2D�
conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv3/BiasAdd/ReadVariableOp�
conv3/BiasAddBiasAddconv3/Conv2D:output:0$conv3/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv3/BiasAdd�
bn3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn3/ReadVariableOp�
bn3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn3/ReadVariableOp_1�
#bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn3/FusedBatchNormV3/ReadVariableOp�
%bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn3/FusedBatchNormV3/ReadVariableOp_1�
bn3/FusedBatchNormV3FusedBatchNormV3conv3/BiasAdd:output:0bn3/ReadVariableOp:value:0bn3/ReadVariableOp_1:value:0+bn3/FusedBatchNormV3/ReadVariableOp:value:0-bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
bn3/FusedBatchNormV3~

relu3/ReluRelubn3/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu3/Relu�
pad4/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad4/Pad/paddings�
pad4/PadPadrelu3/Relu:activations:0pad4/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad4/Pad�
conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv4/Conv2D/ReadVariableOp�
conv4/Conv2DConv2Dpad4/Pad:output:0#conv4/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv4/Conv2D�
conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv4/BiasAdd/ReadVariableOp�
conv4/BiasAddBiasAddconv4/Conv2D:output:0$conv4/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv4/BiasAdd�
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn4/ReadVariableOp�
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn4/ReadVariableOp_1�
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn4/FusedBatchNormV3/ReadVariableOp�
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn4/FusedBatchNormV3/ReadVariableOp_1�
bn4/FusedBatchNormV3FusedBatchNormV3conv4/BiasAdd:output:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
bn4/FusedBatchNormV3~

relu4/ReluRelubn4/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu4/Relu�
pad5/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad5/Pad/paddings�
pad5/PadPadrelu4/Relu:activations:0pad5/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad5/Pad�
conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv5/Conv2D/ReadVariableOp�
conv5/Conv2DConv2Dpad5/Pad:output:0#conv5/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv5/Conv2D�
conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv5/BiasAdd/ReadVariableOp�
conv5/BiasAddBiasAddconv5/Conv2D:output:0$conv5/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv5/BiasAdd�
bn5/ReadVariableOpReadVariableOpbn5_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn5/ReadVariableOp�
bn5/ReadVariableOp_1ReadVariableOpbn5_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn5/ReadVariableOp_1�
#bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn5/FusedBatchNormV3/ReadVariableOp�
%bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn5/FusedBatchNormV3/ReadVariableOp_1�
bn5/FusedBatchNormV3FusedBatchNormV3conv5/BiasAdd:output:0bn5/ReadVariableOp:value:0bn5/ReadVariableOp_1:value:0+bn5/FusedBatchNormV3/ReadVariableOp:value:0-bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
bn5/FusedBatchNormV3~

relu5/ReluRelubn5/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu5/Relu�
pad6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
pad6/Pad/paddings�
pad6/PadPadrelu5/Relu:activations:0pad6/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#���������~����������2

pad6/Pad�
fc6/Conv2D/ReadVariableOpReadVariableOp"fc6_conv2d_readvariableop_resource*(
_output_shapes
:	�� *
dtype02
fc6/Conv2D/ReadVariableOp�

fc6/Conv2DConv2Dpad6/Pad:output:0!fc6/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� *
paddingVALID*
strides
2

fc6/Conv2D�
fc6/BiasAdd/ReadVariableOpReadVariableOp#fc6_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype02
fc6/BiasAdd/ReadVariableOp�
fc6/BiasAddBiasAddfc6/Conv2D:output:0"fc6/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� 2
fc6/BiasAdd�
bn6/ReadVariableOpReadVariableOpbn6_readvariableop_resource*
_output_shapes	
:� *
dtype02
bn6/ReadVariableOp�
bn6/ReadVariableOp_1ReadVariableOpbn6_readvariableop_1_resource*
_output_shapes	
:� *
dtype02
bn6/ReadVariableOp_1�
#bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02%
#bn6/FusedBatchNormV3/ReadVariableOp�
%bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02'
%bn6/FusedBatchNormV3/ReadVariableOp_1�
bn6/FusedBatchNormV3FusedBatchNormV3fc6/BiasAdd:output:0bn6/ReadVariableOp:value:0bn6/ReadVariableOp_1:value:0+bn6/FusedBatchNormV3/ReadVariableOp:value:0-bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
bn6/FusedBatchNormV3~

relu6/ReluRelubn6/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������v���������� 2

relu6/Relu�
'global_avg_pool6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2)
'global_avg_pool6/Mean/reduction_indices�
global_avg_pool6/MeanMeanrelu6/Relu:activations:00global_avg_pool6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:���������� 2
global_avg_pool6/Meann
reshape6/ShapeShapeglobal_avg_pool6/Mean:output:0*
T0*
_output_shapes
:2
reshape6/Shape�
reshape6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape6/strided_slice/stack�
reshape6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
reshape6/strided_slice/stack_1�
reshape6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
reshape6/strided_slice/stack_2�
reshape6/strided_sliceStridedSlicereshape6/Shape:output:0%reshape6/strided_slice/stack:output:0'reshape6/strided_slice/stack_1:output:0'reshape6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape6/strided_slicev
reshape6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape6/Reshape/shape/1v
reshape6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape6/Reshape/shape/2w
reshape6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :� 2
reshape6/Reshape/shape/3�
reshape6/Reshape/shapePackreshape6/strided_slice:output:0!reshape6/Reshape/shape/1:output:0!reshape6/Reshape/shape/2:output:0!reshape6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape6/Reshape/shape�
reshape6/ReshapeReshapeglobal_avg_pool6/Mean:output:0reshape6/Reshape/shape:output:0*
T0*0
_output_shapes
:���������� 2
reshape6/Reshape�
pad7/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
pad7/Pad/paddings�
pad7/PadPadreshape6/Reshape:output:0pad7/Pad/paddings:output:0*
T0*0
_output_shapes
:���������� 2

pad7/Pad�
fc7/Conv2D/ReadVariableOpReadVariableOp"fc7_conv2d_readvariableop_resource*(
_output_shapes
:� �*
dtype02
fc7/Conv2D/ReadVariableOp�

fc7/Conv2DConv2Dpad7/Pad:output:0!fc7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2

fc7/Conv2D�
fc7/BiasAdd/ReadVariableOpReadVariableOp#fc7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
fc7/BiasAdd/ReadVariableOp�
fc7/BiasAddBiasAddfc7/Conv2D:output:0"fc7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
fc7/BiasAdd�
bn7/ReadVariableOpReadVariableOpbn7_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn7/ReadVariableOp�
bn7/ReadVariableOp_1ReadVariableOpbn7_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn7/ReadVariableOp_1�
#bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn7/FusedBatchNormV3/ReadVariableOp�
%bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn7/FusedBatchNormV3/ReadVariableOp_1�
bn7/FusedBatchNormV3FusedBatchNormV3fc7/BiasAdd:output:0bn7/ReadVariableOp:value:0bn7/ReadVariableOp_1:value:0+bn7/FusedBatchNormV3/ReadVariableOp:value:0-bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
bn7/FusedBatchNormV3u

relu7/ReluRelubn7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2

relu7/Relu�
norm/l2_normalize/SquareSquarerelu7/Relu:activations:0*
T0*0
_output_shapes
:����������2
norm/l2_normalize/Square�
'norm/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'norm/l2_normalize/Sum/reduction_indices�
norm/l2_normalize/SumSumnorm/l2_normalize/Square:y:00norm/l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
norm/l2_normalize/Sum
norm/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
norm/l2_normalize/Maximum/y�
norm/l2_normalize/MaximumMaximumnorm/l2_normalize/Sum:output:0$norm/l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
norm/l2_normalize/Maximum�
norm/l2_normalize/RsqrtRsqrtnorm/l2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
norm/l2_normalize/Rsqrt�
norm/l2_normalizeMulrelu7/Relu:activations:0norm/l2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
norm/l2_normalize�
fc8/Conv2D/ReadVariableOpReadVariableOp"fc8_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
fc8/Conv2D/ReadVariableOp�

fc8/Conv2DConv2Dnorm/l2_normalize:z:0!fc8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2

fc8/Conv2D�
fc8/BiasAdd/ReadVariableOpReadVariableOp#fc8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
fc8/BiasAdd/ReadVariableOp�
fc8/BiasAddBiasAddfc8/Conv2D:output:0"fc8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
fc8/BiasAdd�
IdentityIdentityfc8/BiasAdd:output:0$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1$^bn2/FusedBatchNormV3/ReadVariableOp&^bn2/FusedBatchNormV3/ReadVariableOp_1^bn2/ReadVariableOp^bn2/ReadVariableOp_1$^bn3/FusedBatchNormV3/ReadVariableOp&^bn3/FusedBatchNormV3/ReadVariableOp_1^bn3/ReadVariableOp^bn3/ReadVariableOp_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1$^bn5/FusedBatchNormV3/ReadVariableOp&^bn5/FusedBatchNormV3/ReadVariableOp_1^bn5/ReadVariableOp^bn5/ReadVariableOp_1$^bn6/FusedBatchNormV3/ReadVariableOp&^bn6/FusedBatchNormV3/ReadVariableOp_1^bn6/ReadVariableOp^bn6/ReadVariableOp_1$^bn7/FusedBatchNormV3/ReadVariableOp&^bn7/FusedBatchNormV3/ReadVariableOp_1^bn7/ReadVariableOp^bn7/ReadVariableOp_1^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^conv3/BiasAdd/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv4/BiasAdd/ReadVariableOp^conv4/Conv2D/ReadVariableOp^conv5/BiasAdd/ReadVariableOp^conv5/Conv2D/ReadVariableOp^fc6/BiasAdd/ReadVariableOp^fc6/Conv2D/ReadVariableOp^fc7/BiasAdd/ReadVariableOp^fc7/Conv2D/ReadVariableOp^fc8/BiasAdd/ReadVariableOp^fc8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12J
#bn2/FusedBatchNormV3/ReadVariableOp#bn2/FusedBatchNormV3/ReadVariableOp2N
%bn2/FusedBatchNormV3/ReadVariableOp_1%bn2/FusedBatchNormV3/ReadVariableOp_12(
bn2/ReadVariableOpbn2/ReadVariableOp2,
bn2/ReadVariableOp_1bn2/ReadVariableOp_12J
#bn3/FusedBatchNormV3/ReadVariableOp#bn3/FusedBatchNormV3/ReadVariableOp2N
%bn3/FusedBatchNormV3/ReadVariableOp_1%bn3/FusedBatchNormV3/ReadVariableOp_12(
bn3/ReadVariableOpbn3/ReadVariableOp2,
bn3/ReadVariableOp_1bn3/ReadVariableOp_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12J
#bn5/FusedBatchNormV3/ReadVariableOp#bn5/FusedBatchNormV3/ReadVariableOp2N
%bn5/FusedBatchNormV3/ReadVariableOp_1%bn5/FusedBatchNormV3/ReadVariableOp_12(
bn5/ReadVariableOpbn5/ReadVariableOp2,
bn5/ReadVariableOp_1bn5/ReadVariableOp_12J
#bn6/FusedBatchNormV3/ReadVariableOp#bn6/FusedBatchNormV3/ReadVariableOp2N
%bn6/FusedBatchNormV3/ReadVariableOp_1%bn6/FusedBatchNormV3/ReadVariableOp_12(
bn6/ReadVariableOpbn6/ReadVariableOp2,
bn6/ReadVariableOp_1bn6/ReadVariableOp_12J
#bn7/FusedBatchNormV3/ReadVariableOp#bn7/FusedBatchNormV3/ReadVariableOp2N
%bn7/FusedBatchNormV3/ReadVariableOp_1%bn7/FusedBatchNormV3/ReadVariableOp_12(
bn7/ReadVariableOpbn7/ReadVariableOp2,
bn7/ReadVariableOp_1bn7/ReadVariableOp_12<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
conv3/BiasAdd/ReadVariableOpconv3/BiasAdd/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv4/BiasAdd/ReadVariableOpconv4/BiasAdd/ReadVariableOp2:
conv4/Conv2D/ReadVariableOpconv4/Conv2D/ReadVariableOp2<
conv5/BiasAdd/ReadVariableOpconv5/BiasAdd/ReadVariableOp2:
conv5/Conv2D/ReadVariableOpconv5/Conv2D/ReadVariableOp28
fc6/BiasAdd/ReadVariableOpfc6/BiasAdd/ReadVariableOp26
fc6/Conv2D/ReadVariableOpfc6/Conv2D/ReadVariableOp28
fc7/BiasAdd/ReadVariableOpfc7/BiasAdd/ReadVariableOp26
fc7/Conv2D/ReadVariableOpfc7/Conv2D/ReadVariableOp28
fc8/BiasAdd/ReadVariableOpfc8/BiasAdd/ReadVariableOp26
fc8/Conv2D/ReadVariableOpfc8/Conv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
"__inference_bn4_layer_call_fn_4320

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_12132
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_4119

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�

�
?__inference_conv5_layer_call_and_return_conditional_losses_4340

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�|
�	
@__inference_VGGVox_layer_call_and_return_conditional_losses_2468
input_array

conv1_1614

conv1_1616
bn1_1683
bn1_1685
bn1_1687
bn1_1689

conv2_1727

conv2_1729
bn2_1796
bn2_1798
bn2_1800
bn2_1802

conv3_1840

conv3_1842
bn3_1909
bn3_1911
bn3_1913
bn3_1915

conv4_1953

conv4_1955
bn4_2022
bn4_2024
bn4_2026
bn4_2028

conv5_2066

conv5_2068
bn5_2135
bn5_2137
bn5_2139
bn5_2141
fc6_2179
fc6_2181
bn6_2248
bn6_2250
bn6_2252
bn6_2254
fc7_2315
fc7_2317
bn7_2384
bn7_2386
bn7_2388
bn7_2390
fc8_2462
fc8_2464
identity��bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�bn4/StatefulPartitionedCall�bn5/StatefulPartitionedCall�bn6/StatefulPartitionedCall�bn7/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�conv4/StatefulPartitionedCall�conv5/StatefulPartitionedCall�fc6/StatefulPartitionedCall�fc7/StatefulPartitionedCall�fc8/StatefulPartitionedCall�
pad1/PartitionedCallPartitionedCallinput_array*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad1_layer_call_and_return_conditional_losses_7632
pad1/PartitionedCall�
conv1/StatefulPartitionedCallStatefulPartitionedCallpad1/PartitionedCall:output:0
conv1_1614
conv1_1616*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_16032
conv1/StatefulPartitionedCall�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0bn1_1683bn1_1685bn1_1687bn1_1689*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16382
bn1/StatefulPartitionedCall�
relu1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu1_layer_call_and_return_conditional_losses_16972
relu1/PartitionedCall�
pad2/PartitionedCallPartitionedCallrelu1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad2_layer_call_and_return_conditional_losses_8802
pad2/PartitionedCall�
conv2/StatefulPartitionedCallStatefulPartitionedCallpad2/PartitionedCall:output:0
conv2_1727
conv2_1729*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2_layer_call_and_return_conditional_losses_17162
conv2/StatefulPartitionedCall�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0bn2_1796bn2_1798bn2_1800bn2_1802*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17512
bn2/StatefulPartitionedCall�
relu2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_18102
relu2/PartitionedCall�
pad3/PartitionedCallPartitionedCallrelu2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad3_layer_call_and_return_conditional_losses_9972
pad3/PartitionedCall�
conv3/StatefulPartitionedCallStatefulPartitionedCallpad3/PartitionedCall:output:0
conv3_1840
conv3_1842*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_18292
conv3/StatefulPartitionedCall�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn3_1909bn3_1911bn3_1913bn3_1915*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18642
bn3/StatefulPartitionedCall�
relu3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu3_layer_call_and_return_conditional_losses_19232
relu3/PartitionedCall�
pad4/PartitionedCallPartitionedCallrelu3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad4_layer_call_and_return_conditional_losses_11142
pad4/PartitionedCall�
conv4/StatefulPartitionedCallStatefulPartitionedCallpad4/PartitionedCall:output:0
conv4_1953
conv4_1955*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv4_layer_call_and_return_conditional_losses_19422
conv4/StatefulPartitionedCall�
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv4/StatefulPartitionedCall:output:0bn4_2022bn4_2024bn4_2026bn4_2028*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19772
bn4/StatefulPartitionedCall�
relu4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu4_layer_call_and_return_conditional_losses_20362
relu4/PartitionedCall�
pad5/PartitionedCallPartitionedCallrelu4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad5_layer_call_and_return_conditional_losses_12312
pad5/PartitionedCall�
conv5/StatefulPartitionedCallStatefulPartitionedCallpad5/PartitionedCall:output:0
conv5_2066
conv5_2068*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv5_layer_call_and_return_conditional_losses_20552
conv5/StatefulPartitionedCall�
bn5/StatefulPartitionedCallStatefulPartitionedCall&conv5/StatefulPartitionedCall:output:0bn5_2135bn5_2137bn5_2139bn5_2141*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_20902
bn5/StatefulPartitionedCall�
relu5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_21492
relu5/PartitionedCall�
pad6/PartitionedCallPartitionedCallrelu5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad6_layer_call_and_return_conditional_losses_13482
pad6/PartitionedCall�
fc6/StatefulPartitionedCallStatefulPartitionedCallpad6/PartitionedCall:output:0fc6_2179fc6_2181*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc6_layer_call_and_return_conditional_losses_21682
fc6/StatefulPartitionedCall�
bn6/StatefulPartitionedCallStatefulPartitionedCall$fc6/StatefulPartitionedCall:output:0bn6_2248bn6_2250bn6_2252bn6_2254*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22032
bn6/StatefulPartitionedCall�
relu6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu6_layer_call_and_return_conditional_losses_22622
relu6/PartitionedCall�
 global_avg_pool6/PartitionedCallPartitionedCallrelu6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_14652"
 global_avg_pool6/PartitionedCall�
reshape6/PartitionedCallPartitionedCall)global_avg_pool6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape6_layer_call_and_return_conditional_losses_22852
reshape6/PartitionedCall�
pad7/PartitionedCallPartitionedCall!reshape6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad7_layer_call_and_return_conditional_losses_14782
pad7/PartitionedCall�
fc7/StatefulPartitionedCallStatefulPartitionedCallpad7/PartitionedCall:output:0fc7_2315fc7_2317*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc7_layer_call_and_return_conditional_losses_23042
fc7/StatefulPartitionedCall�
bn7/StatefulPartitionedCallStatefulPartitionedCall$fc7/StatefulPartitionedCall:output:0bn7_2384bn7_2386bn7_2388bn7_2390*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23392
bn7/StatefulPartitionedCall�
relu7/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu7_layer_call_and_return_conditional_losses_23982
relu7/PartitionedCall�
norm/PartitionedCallPartitionedCallrelu7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24172
norm/PartitionedCall�
fc8/StatefulPartitionedCallStatefulPartitionedCallnorm/PartitionedCall:output:0fc8_2462fc8_2464*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc8_layer_call_and_return_conditional_losses_24512
fc8/StatefulPartitionedCall�
IdentityIdentity$fc8/StatefulPartitionedCall:output:0^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall^conv5/StatefulPartitionedCall^fc6/StatefulPartitionedCall^fc7/StatefulPartitionedCall^fc8/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2>
conv5/StatefulPartitionedCallconv5/StatefulPartitionedCall2:
fc6/StatefulPartitionedCallfc6/StatefulPartitionedCall2:
fc7/StatefulPartitionedCallfc7/StatefulPartitionedCall2:
fc8/StatefulPartitionedCallfc8/StatefulPartitionedCall:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�

Z
>__inference_norm_layer_call_and_return_conditional_losses_2417

inputs
identityw
l2_normalize/SquareSquareinputs*
T0*0
_output_shapes
:����������2
l2_normalize/Square�
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"l2_normalize/Sum/reduction_indices�
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
l2_normalize/Sumu
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
l2_normalize/Maximum/y�
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
l2_normalize/Maximum�
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
l2_normalize/Rsqrt~
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
l2_normalizem
IdentityIdentityl2_normalize:z:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_bn6_layer_call_fn_4557

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,���������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_14162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_4212

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_3916

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_1638

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_1577

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu6_layer_call_and_return_conditional_losses_4639

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������v���������� 2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������v���������� :a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_4720

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_1882

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�

�
?__inference_conv5_layer_call_and_return_conditional_losses_2055

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
w
"__inference_fc8_layer_call_fn_4871

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc8_layer_call_and_return_conditional_losses_24512
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_bn2_layer_call_fn_3929

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_bn2_layer_call_and_return_conditional_losses_9482
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
Y
=__inference_pad3_layer_call_and_return_conditional_losses_997

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_3823

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
��
�
@__inference_VGGVox_layer_call_and_return_conditional_losses_3326

inputs(
$conv1_conv2d_readvariableop_resource)
%conv1_biasadd_readvariableop_resource
bn1_readvariableop_resource!
bn1_readvariableop_1_resource0
,bn1_fusedbatchnormv3_readvariableop_resource2
.bn1_fusedbatchnormv3_readvariableop_1_resource(
$conv2_conv2d_readvariableop_resource)
%conv2_biasadd_readvariableop_resource
bn2_readvariableop_resource!
bn2_readvariableop_1_resource0
,bn2_fusedbatchnormv3_readvariableop_resource2
.bn2_fusedbatchnormv3_readvariableop_1_resource(
$conv3_conv2d_readvariableop_resource)
%conv3_biasadd_readvariableop_resource
bn3_readvariableop_resource!
bn3_readvariableop_1_resource0
,bn3_fusedbatchnormv3_readvariableop_resource2
.bn3_fusedbatchnormv3_readvariableop_1_resource(
$conv4_conv2d_readvariableop_resource)
%conv4_biasadd_readvariableop_resource
bn4_readvariableop_resource!
bn4_readvariableop_1_resource0
,bn4_fusedbatchnormv3_readvariableop_resource2
.bn4_fusedbatchnormv3_readvariableop_1_resource(
$conv5_conv2d_readvariableop_resource)
%conv5_biasadd_readvariableop_resource
bn5_readvariableop_resource!
bn5_readvariableop_1_resource0
,bn5_fusedbatchnormv3_readvariableop_resource2
.bn5_fusedbatchnormv3_readvariableop_1_resource&
"fc6_conv2d_readvariableop_resource'
#fc6_biasadd_readvariableop_resource
bn6_readvariableop_resource!
bn6_readvariableop_1_resource0
,bn6_fusedbatchnormv3_readvariableop_resource2
.bn6_fusedbatchnormv3_readvariableop_1_resource&
"fc7_conv2d_readvariableop_resource'
#fc7_biasadd_readvariableop_resource
bn7_readvariableop_resource!
bn7_readvariableop_1_resource0
,bn7_fusedbatchnormv3_readvariableop_resource2
.bn7_fusedbatchnormv3_readvariableop_1_resource&
"fc8_conv2d_readvariableop_resource'
#fc8_biasadd_readvariableop_resource
identity��bn1/AssignNewValue�bn1/AssignNewValue_1�#bn1/FusedBatchNormV3/ReadVariableOp�%bn1/FusedBatchNormV3/ReadVariableOp_1�bn1/ReadVariableOp�bn1/ReadVariableOp_1�bn2/AssignNewValue�bn2/AssignNewValue_1�#bn2/FusedBatchNormV3/ReadVariableOp�%bn2/FusedBatchNormV3/ReadVariableOp_1�bn2/ReadVariableOp�bn2/ReadVariableOp_1�bn3/AssignNewValue�bn3/AssignNewValue_1�#bn3/FusedBatchNormV3/ReadVariableOp�%bn3/FusedBatchNormV3/ReadVariableOp_1�bn3/ReadVariableOp�bn3/ReadVariableOp_1�bn4/AssignNewValue�bn4/AssignNewValue_1�#bn4/FusedBatchNormV3/ReadVariableOp�%bn4/FusedBatchNormV3/ReadVariableOp_1�bn4/ReadVariableOp�bn4/ReadVariableOp_1�bn5/AssignNewValue�bn5/AssignNewValue_1�#bn5/FusedBatchNormV3/ReadVariableOp�%bn5/FusedBatchNormV3/ReadVariableOp_1�bn5/ReadVariableOp�bn5/ReadVariableOp_1�bn6/AssignNewValue�bn6/AssignNewValue_1�#bn6/FusedBatchNormV3/ReadVariableOp�%bn6/FusedBatchNormV3/ReadVariableOp_1�bn6/ReadVariableOp�bn6/ReadVariableOp_1�bn7/AssignNewValue�bn7/AssignNewValue_1�#bn7/FusedBatchNormV3/ReadVariableOp�%bn7/FusedBatchNormV3/ReadVariableOp_1�bn7/ReadVariableOp�bn7/ReadVariableOp_1�conv1/BiasAdd/ReadVariableOp�conv1/Conv2D/ReadVariableOp�conv2/BiasAdd/ReadVariableOp�conv2/Conv2D/ReadVariableOp�conv3/BiasAdd/ReadVariableOp�conv3/Conv2D/ReadVariableOp�conv4/BiasAdd/ReadVariableOp�conv4/Conv2D/ReadVariableOp�conv5/BiasAdd/ReadVariableOp�conv5/Conv2D/ReadVariableOp�fc6/BiasAdd/ReadVariableOp�fc6/Conv2D/ReadVariableOp�fc7/BiasAdd/ReadVariableOp�fc7/Conv2D/ReadVariableOp�fc8/BiasAdd/ReadVariableOp�fc8/Conv2D/ReadVariableOp�
pad1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad1/Pad/paddings�
pad1/PadPadinputspad1/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������2

pad1/Pad�
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
conv1/Conv2D/ReadVariableOp�
conv1/Conv2DConv2Dpad1/Pad:output:0#conv1/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`*
paddingVALID*
strides
2
conv1/Conv2D�
conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
conv1/BiasAdd/ReadVariableOp�
conv1/BiasAddBiasAddconv1/Conv2D:output:0$conv1/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`2
conv1/BiasAdd�
bn1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:`*
dtype02
bn1/ReadVariableOp�
bn1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:`*
dtype02
bn1/ReadVariableOp_1�
#bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02%
#bn1/FusedBatchNormV3/ReadVariableOp�
%bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02'
%bn1/FusedBatchNormV3/ReadVariableOp_1�
bn1/FusedBatchNormV3FusedBatchNormV3conv1/BiasAdd:output:0bn1/ReadVariableOp:value:0bn1/ReadVariableOp_1:value:0+bn1/FusedBatchNormV3/ReadVariableOp:value:0-bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
exponential_avg_factor%    2
bn1/FusedBatchNormV3�
bn1/AssignNewValueAssignVariableOp,bn1_fusedbatchnormv3_readvariableop_resource!bn1/FusedBatchNormV3:batch_mean:0$^bn1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn1/AssignNewValue�
bn1/AssignNewValue_1AssignVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource%bn1/FusedBatchNormV3:batch_variance:0&^bn1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn1/AssignNewValue_1~

relu1/ReluRelubn1/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#�������������������`2

relu1/Relu�
pad2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad2/Pad/paddings�
pad2/PadPadrelu1/Relu:activations:0pad2/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������`2

pad2/Pad�
conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*'
_output_shapes
:`�*
dtype02
conv2/Conv2D/ReadVariableOp�
conv2/Conv2DConv2Dpad2/Pad:output:0#conv2/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv2/Conv2D�
conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv2/BiasAdd/ReadVariableOp�
conv2/BiasAddBiasAddconv2/Conv2D:output:0$conv2/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv2/BiasAdd�
bn2/ReadVariableOpReadVariableOpbn2_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn2/ReadVariableOp�
bn2/ReadVariableOp_1ReadVariableOpbn2_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn2/ReadVariableOp_1�
#bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn2/FusedBatchNormV3/ReadVariableOp�
%bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn2/FusedBatchNormV3/ReadVariableOp_1�
bn2/FusedBatchNormV3FusedBatchNormV3conv2/BiasAdd:output:0bn2/ReadVariableOp:value:0bn2/ReadVariableOp_1:value:0+bn2/FusedBatchNormV3/ReadVariableOp:value:0-bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
bn2/FusedBatchNormV3�
bn2/AssignNewValueAssignVariableOp,bn2_fusedbatchnormv3_readvariableop_resource!bn2/FusedBatchNormV3:batch_mean:0$^bn2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn2/AssignNewValue�
bn2/AssignNewValue_1AssignVariableOp.bn2_fusedbatchnormv3_readvariableop_1_resource%bn2/FusedBatchNormV3:batch_variance:0&^bn2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn2/AssignNewValue_1~

relu2/ReluRelubn2/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu2/Relu�
pad3/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad3/Pad/paddings�
pad3/PadPadrelu2/Relu:activations:0pad3/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad3/Pad�
conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv3/Conv2D/ReadVariableOp�
conv3/Conv2DConv2Dpad3/Pad:output:0#conv3/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv3/Conv2D�
conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv3/BiasAdd/ReadVariableOp�
conv3/BiasAddBiasAddconv3/Conv2D:output:0$conv3/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv3/BiasAdd�
bn3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn3/ReadVariableOp�
bn3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn3/ReadVariableOp_1�
#bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn3/FusedBatchNormV3/ReadVariableOp�
%bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn3/FusedBatchNormV3/ReadVariableOp_1�
bn3/FusedBatchNormV3FusedBatchNormV3conv3/BiasAdd:output:0bn3/ReadVariableOp:value:0bn3/ReadVariableOp_1:value:0+bn3/FusedBatchNormV3/ReadVariableOp:value:0-bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
bn3/FusedBatchNormV3�
bn3/AssignNewValueAssignVariableOp,bn3_fusedbatchnormv3_readvariableop_resource!bn3/FusedBatchNormV3:batch_mean:0$^bn3/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn3/AssignNewValue�
bn3/AssignNewValue_1AssignVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource%bn3/FusedBatchNormV3:batch_variance:0&^bn3/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn3/AssignNewValue_1~

relu3/ReluRelubn3/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu3/Relu�
pad4/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad4/Pad/paddings�
pad4/PadPadrelu3/Relu:activations:0pad4/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad4/Pad�
conv4/Conv2D/ReadVariableOpReadVariableOp$conv4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv4/Conv2D/ReadVariableOp�
conv4/Conv2DConv2Dpad4/Pad:output:0#conv4/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv4/Conv2D�
conv4/BiasAdd/ReadVariableOpReadVariableOp%conv4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv4/BiasAdd/ReadVariableOp�
conv4/BiasAddBiasAddconv4/Conv2D:output:0$conv4/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv4/BiasAdd�
bn4/ReadVariableOpReadVariableOpbn4_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn4/ReadVariableOp�
bn4/ReadVariableOp_1ReadVariableOpbn4_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn4/ReadVariableOp_1�
#bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn4/FusedBatchNormV3/ReadVariableOp�
%bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn4/FusedBatchNormV3/ReadVariableOp_1�
bn4/FusedBatchNormV3FusedBatchNormV3conv4/BiasAdd:output:0bn4/ReadVariableOp:value:0bn4/ReadVariableOp_1:value:0+bn4/FusedBatchNormV3/ReadVariableOp:value:0-bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
bn4/FusedBatchNormV3�
bn4/AssignNewValueAssignVariableOp,bn4_fusedbatchnormv3_readvariableop_resource!bn4/FusedBatchNormV3:batch_mean:0$^bn4/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn4/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn4/AssignNewValue�
bn4/AssignNewValue_1AssignVariableOp.bn4_fusedbatchnormv3_readvariableop_1_resource%bn4/FusedBatchNormV3:batch_variance:0&^bn4/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn4/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn4/AssignNewValue_1~

relu4/ReluRelubn4/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu4/Relu�
pad5/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
pad5/Pad/paddings�
pad5/PadPadrelu4/Relu:activations:0pad5/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2

pad5/Pad�
conv5/Conv2D/ReadVariableOpReadVariableOp$conv5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
conv5/Conv2D/ReadVariableOp�
conv5/Conv2DConv2Dpad5/Pad:output:0#conv5/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
conv5/Conv2D�
conv5/BiasAdd/ReadVariableOpReadVariableOp%conv5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
conv5/BiasAdd/ReadVariableOp�
conv5/BiasAddBiasAddconv5/Conv2D:output:0$conv5/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
conv5/BiasAdd�
bn5/ReadVariableOpReadVariableOpbn5_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn5/ReadVariableOp�
bn5/ReadVariableOp_1ReadVariableOpbn5_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn5/ReadVariableOp_1�
#bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn5/FusedBatchNormV3/ReadVariableOp�
%bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn5/FusedBatchNormV3/ReadVariableOp_1�
bn5/FusedBatchNormV3FusedBatchNormV3conv5/BiasAdd:output:0bn5/ReadVariableOp:value:0bn5/ReadVariableOp_1:value:0+bn5/FusedBatchNormV3/ReadVariableOp:value:0-bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
bn5/FusedBatchNormV3�
bn5/AssignNewValueAssignVariableOp,bn5_fusedbatchnormv3_readvariableop_resource!bn5/FusedBatchNormV3:batch_mean:0$^bn5/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn5/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn5/AssignNewValue�
bn5/AssignNewValue_1AssignVariableOp.bn5_fusedbatchnormv3_readvariableop_1_resource%bn5/FusedBatchNormV3:batch_variance:0&^bn5/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn5/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn5/AssignNewValue_1~

relu5/ReluRelubn5/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2

relu5/Relu�
pad6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
pad6/Pad/paddings�
pad6/PadPadrelu5/Relu:activations:0pad6/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#���������~����������2

pad6/Pad�
fc6/Conv2D/ReadVariableOpReadVariableOp"fc6_conv2d_readvariableop_resource*(
_output_shapes
:	�� *
dtype02
fc6/Conv2D/ReadVariableOp�

fc6/Conv2DConv2Dpad6/Pad:output:0!fc6/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� *
paddingVALID*
strides
2

fc6/Conv2D�
fc6/BiasAdd/ReadVariableOpReadVariableOp#fc6_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype02
fc6/BiasAdd/ReadVariableOp�
fc6/BiasAddBiasAddfc6/Conv2D:output:0"fc6/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� 2
fc6/BiasAdd�
bn6/ReadVariableOpReadVariableOpbn6_readvariableop_resource*
_output_shapes	
:� *
dtype02
bn6/ReadVariableOp�
bn6/ReadVariableOp_1ReadVariableOpbn6_readvariableop_1_resource*
_output_shapes	
:� *
dtype02
bn6/ReadVariableOp_1�
#bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02%
#bn6/FusedBatchNormV3/ReadVariableOp�
%bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02'
%bn6/FusedBatchNormV3/ReadVariableOp_1�
bn6/FusedBatchNormV3FusedBatchNormV3fc6/BiasAdd:output:0bn6/ReadVariableOp:value:0bn6/ReadVariableOp_1:value:0+bn6/FusedBatchNormV3/ReadVariableOp:value:0-bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
exponential_avg_factor%    2
bn6/FusedBatchNormV3�
bn6/AssignNewValueAssignVariableOp,bn6_fusedbatchnormv3_readvariableop_resource!bn6/FusedBatchNormV3:batch_mean:0$^bn6/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn6/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn6/AssignNewValue�
bn6/AssignNewValue_1AssignVariableOp.bn6_fusedbatchnormv3_readvariableop_1_resource%bn6/FusedBatchNormV3:batch_variance:0&^bn6/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn6/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn6/AssignNewValue_1~

relu6/ReluRelubn6/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������v���������� 2

relu6/Relu�
'global_avg_pool6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2)
'global_avg_pool6/Mean/reduction_indices�
global_avg_pool6/MeanMeanrelu6/Relu:activations:00global_avg_pool6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:���������� 2
global_avg_pool6/Meann
reshape6/ShapeShapeglobal_avg_pool6/Mean:output:0*
T0*
_output_shapes
:2
reshape6/Shape�
reshape6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape6/strided_slice/stack�
reshape6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
reshape6/strided_slice/stack_1�
reshape6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
reshape6/strided_slice/stack_2�
reshape6/strided_sliceStridedSlicereshape6/Shape:output:0%reshape6/strided_slice/stack:output:0'reshape6/strided_slice/stack_1:output:0'reshape6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape6/strided_slicev
reshape6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape6/Reshape/shape/1v
reshape6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape6/Reshape/shape/2w
reshape6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :� 2
reshape6/Reshape/shape/3�
reshape6/Reshape/shapePackreshape6/strided_slice:output:0!reshape6/Reshape/shape/1:output:0!reshape6/Reshape/shape/2:output:0!reshape6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape6/Reshape/shape�
reshape6/ReshapeReshapeglobal_avg_pool6/Mean:output:0reshape6/Reshape/shape:output:0*
T0*0
_output_shapes
:���������� 2
reshape6/Reshape�
pad7/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
pad7/Pad/paddings�
pad7/PadPadreshape6/Reshape:output:0pad7/Pad/paddings:output:0*
T0*0
_output_shapes
:���������� 2

pad7/Pad�
fc7/Conv2D/ReadVariableOpReadVariableOp"fc7_conv2d_readvariableop_resource*(
_output_shapes
:� �*
dtype02
fc7/Conv2D/ReadVariableOp�

fc7/Conv2DConv2Dpad7/Pad:output:0!fc7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2

fc7/Conv2D�
fc7/BiasAdd/ReadVariableOpReadVariableOp#fc7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
fc7/BiasAdd/ReadVariableOp�
fc7/BiasAddBiasAddfc7/Conv2D:output:0"fc7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
fc7/BiasAdd�
bn7/ReadVariableOpReadVariableOpbn7_readvariableop_resource*
_output_shapes	
:�*
dtype02
bn7/ReadVariableOp�
bn7/ReadVariableOp_1ReadVariableOpbn7_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
bn7/ReadVariableOp_1�
#bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#bn7/FusedBatchNormV3/ReadVariableOp�
%bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02'
%bn7/FusedBatchNormV3/ReadVariableOp_1�
bn7/FusedBatchNormV3FusedBatchNormV3fc7/BiasAdd:output:0bn7/ReadVariableOp:value:0bn7/ReadVariableOp_1:value:0+bn7/FusedBatchNormV3/ReadVariableOp:value:0-bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
bn7/FusedBatchNormV3�
bn7/AssignNewValueAssignVariableOp,bn7_fusedbatchnormv3_readvariableop_resource!bn7/FusedBatchNormV3:batch_mean:0$^bn7/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@bn7/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn7/AssignNewValue�
bn7/AssignNewValue_1AssignVariableOp.bn7_fusedbatchnormv3_readvariableop_1_resource%bn7/FusedBatchNormV3:batch_variance:0&^bn7/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@bn7/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn7/AssignNewValue_1u

relu7/ReluRelubn7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2

relu7/Relu�
norm/l2_normalize/SquareSquarerelu7/Relu:activations:0*
T0*0
_output_shapes
:����������2
norm/l2_normalize/Square�
'norm/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2)
'norm/l2_normalize/Sum/reduction_indices�
norm/l2_normalize/SumSumnorm/l2_normalize/Square:y:00norm/l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
norm/l2_normalize/Sum
norm/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
norm/l2_normalize/Maximum/y�
norm/l2_normalize/MaximumMaximumnorm/l2_normalize/Sum:output:0$norm/l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
norm/l2_normalize/Maximum�
norm/l2_normalize/RsqrtRsqrtnorm/l2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
norm/l2_normalize/Rsqrt�
norm/l2_normalizeMulrelu7/Relu:activations:0norm/l2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
norm/l2_normalize�
fc8/Conv2D/ReadVariableOpReadVariableOp"fc8_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
fc8/Conv2D/ReadVariableOp�

fc8/Conv2DConv2Dnorm/l2_normalize:z:0!fc8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2

fc8/Conv2D�
fc8/BiasAdd/ReadVariableOpReadVariableOp#fc8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
fc8/BiasAdd/ReadVariableOp�
fc8/BiasAddBiasAddfc8/Conv2D:output:0"fc8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
fc8/BiasAdd�
IdentityIdentityfc8/BiasAdd:output:0^bn1/AssignNewValue^bn1/AssignNewValue_1$^bn1/FusedBatchNormV3/ReadVariableOp&^bn1/FusedBatchNormV3/ReadVariableOp_1^bn1/ReadVariableOp^bn1/ReadVariableOp_1^bn2/AssignNewValue^bn2/AssignNewValue_1$^bn2/FusedBatchNormV3/ReadVariableOp&^bn2/FusedBatchNormV3/ReadVariableOp_1^bn2/ReadVariableOp^bn2/ReadVariableOp_1^bn3/AssignNewValue^bn3/AssignNewValue_1$^bn3/FusedBatchNormV3/ReadVariableOp&^bn3/FusedBatchNormV3/ReadVariableOp_1^bn3/ReadVariableOp^bn3/ReadVariableOp_1^bn4/AssignNewValue^bn4/AssignNewValue_1$^bn4/FusedBatchNormV3/ReadVariableOp&^bn4/FusedBatchNormV3/ReadVariableOp_1^bn4/ReadVariableOp^bn4/ReadVariableOp_1^bn5/AssignNewValue^bn5/AssignNewValue_1$^bn5/FusedBatchNormV3/ReadVariableOp&^bn5/FusedBatchNormV3/ReadVariableOp_1^bn5/ReadVariableOp^bn5/ReadVariableOp_1^bn6/AssignNewValue^bn6/AssignNewValue_1$^bn6/FusedBatchNormV3/ReadVariableOp&^bn6/FusedBatchNormV3/ReadVariableOp_1^bn6/ReadVariableOp^bn6/ReadVariableOp_1^bn7/AssignNewValue^bn7/AssignNewValue_1$^bn7/FusedBatchNormV3/ReadVariableOp&^bn7/FusedBatchNormV3/ReadVariableOp_1^bn7/ReadVariableOp^bn7/ReadVariableOp_1^conv1/BiasAdd/ReadVariableOp^conv1/Conv2D/ReadVariableOp^conv2/BiasAdd/ReadVariableOp^conv2/Conv2D/ReadVariableOp^conv3/BiasAdd/ReadVariableOp^conv3/Conv2D/ReadVariableOp^conv4/BiasAdd/ReadVariableOp^conv4/Conv2D/ReadVariableOp^conv5/BiasAdd/ReadVariableOp^conv5/Conv2D/ReadVariableOp^fc6/BiasAdd/ReadVariableOp^fc6/Conv2D/ReadVariableOp^fc7/BiasAdd/ReadVariableOp^fc7/Conv2D/ReadVariableOp^fc8/BiasAdd/ReadVariableOp^fc8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2(
bn1/AssignNewValuebn1/AssignNewValue2,
bn1/AssignNewValue_1bn1/AssignNewValue_12J
#bn1/FusedBatchNormV3/ReadVariableOp#bn1/FusedBatchNormV3/ReadVariableOp2N
%bn1/FusedBatchNormV3/ReadVariableOp_1%bn1/FusedBatchNormV3/ReadVariableOp_12(
bn1/ReadVariableOpbn1/ReadVariableOp2,
bn1/ReadVariableOp_1bn1/ReadVariableOp_12(
bn2/AssignNewValuebn2/AssignNewValue2,
bn2/AssignNewValue_1bn2/AssignNewValue_12J
#bn2/FusedBatchNormV3/ReadVariableOp#bn2/FusedBatchNormV3/ReadVariableOp2N
%bn2/FusedBatchNormV3/ReadVariableOp_1%bn2/FusedBatchNormV3/ReadVariableOp_12(
bn2/ReadVariableOpbn2/ReadVariableOp2,
bn2/ReadVariableOp_1bn2/ReadVariableOp_12(
bn3/AssignNewValuebn3/AssignNewValue2,
bn3/AssignNewValue_1bn3/AssignNewValue_12J
#bn3/FusedBatchNormV3/ReadVariableOp#bn3/FusedBatchNormV3/ReadVariableOp2N
%bn3/FusedBatchNormV3/ReadVariableOp_1%bn3/FusedBatchNormV3/ReadVariableOp_12(
bn3/ReadVariableOpbn3/ReadVariableOp2,
bn3/ReadVariableOp_1bn3/ReadVariableOp_12(
bn4/AssignNewValuebn4/AssignNewValue2,
bn4/AssignNewValue_1bn4/AssignNewValue_12J
#bn4/FusedBatchNormV3/ReadVariableOp#bn4/FusedBatchNormV3/ReadVariableOp2N
%bn4/FusedBatchNormV3/ReadVariableOp_1%bn4/FusedBatchNormV3/ReadVariableOp_12(
bn4/ReadVariableOpbn4/ReadVariableOp2,
bn4/ReadVariableOp_1bn4/ReadVariableOp_12(
bn5/AssignNewValuebn5/AssignNewValue2,
bn5/AssignNewValue_1bn5/AssignNewValue_12J
#bn5/FusedBatchNormV3/ReadVariableOp#bn5/FusedBatchNormV3/ReadVariableOp2N
%bn5/FusedBatchNormV3/ReadVariableOp_1%bn5/FusedBatchNormV3/ReadVariableOp_12(
bn5/ReadVariableOpbn5/ReadVariableOp2,
bn5/ReadVariableOp_1bn5/ReadVariableOp_12(
bn6/AssignNewValuebn6/AssignNewValue2,
bn6/AssignNewValue_1bn6/AssignNewValue_12J
#bn6/FusedBatchNormV3/ReadVariableOp#bn6/FusedBatchNormV3/ReadVariableOp2N
%bn6/FusedBatchNormV3/ReadVariableOp_1%bn6/FusedBatchNormV3/ReadVariableOp_12(
bn6/ReadVariableOpbn6/ReadVariableOp2,
bn6/ReadVariableOp_1bn6/ReadVariableOp_12(
bn7/AssignNewValuebn7/AssignNewValue2,
bn7/AssignNewValue_1bn7/AssignNewValue_12J
#bn7/FusedBatchNormV3/ReadVariableOp#bn7/FusedBatchNormV3/ReadVariableOp2N
%bn7/FusedBatchNormV3/ReadVariableOp_1%bn7/FusedBatchNormV3/ReadVariableOp_12(
bn7/ReadVariableOpbn7/ReadVariableOp2,
bn7/ReadVariableOp_1bn7/ReadVariableOp_12<
conv1/BiasAdd/ReadVariableOpconv1/BiasAdd/ReadVariableOp2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2<
conv2/BiasAdd/ReadVariableOpconv2/BiasAdd/ReadVariableOp2:
conv2/Conv2D/ReadVariableOpconv2/Conv2D/ReadVariableOp2<
conv3/BiasAdd/ReadVariableOpconv3/BiasAdd/ReadVariableOp2:
conv3/Conv2D/ReadVariableOpconv3/Conv2D/ReadVariableOp2<
conv4/BiasAdd/ReadVariableOpconv4/BiasAdd/ReadVariableOp2:
conv4/Conv2D/ReadVariableOpconv4/Conv2D/ReadVariableOp2<
conv5/BiasAdd/ReadVariableOpconv5/BiasAdd/ReadVariableOp2:
conv5/Conv2D/ReadVariableOpconv5/Conv2D/ReadVariableOp28
fc6/BiasAdd/ReadVariableOpfc6/BiasAdd/ReadVariableOp26
fc6/Conv2D/ReadVariableOpfc6/Conv2D/ReadVariableOp28
fc7/BiasAdd/ReadVariableOpfc7/BiasAdd/ReadVariableOp26
fc7/Conv2D/ReadVariableOpfc7/Conv2D/ReadVariableOp28
fc8/BiasAdd/ReadVariableOpfc8/BiasAdd/ReadVariableOp26
fc8/Conv2D/ReadVariableOpfc8/Conv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
[
?__inference_relu6_layer_call_and_return_conditional_losses_2262

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������v���������� 2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������v���������� :a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
Z
>__inference_pad7_layer_call_and_return_conditional_losses_1478

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
?__inference_conv2_layer_call_and_return_conditional_losses_1716

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_4702

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
?__inference_conv2_layer_call_and_return_conditional_losses_3869

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
C
'__inference_reshape6_layer_call_fn_4663

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape6_layer_call_and_return_conditional_losses_22852
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������� 2

Identity"
identityIdentity:output:0*'
_input_shapes
:���������� :P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_4526

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,���������������������������� :� :� :� :� :*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�	
�
=__inference_fc7_layer_call_and_return_conditional_losses_4673

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:� �*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:���������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
"__inference_bn4_layer_call_fn_4307

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_11822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
>
"__inference_pad1_layer_call_fn_769

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad1_layer_call_and_return_conditional_losses_7632
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
"__inference_bn5_layer_call_fn_4477

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_21082
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_4766

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
/__inference_global_avg_pool6_layer_call_fn_1471

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_14652
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
Y
=__inference_pad1_layer_call_and_return_conditional_losses_763

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_2090

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_4544

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,���������������������������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�

�
?__inference_conv3_layer_call_and_return_conditional_losses_4026

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
�
"__inference_bn2_layer_call_fn_3993

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17512
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn2_layer_call_fn_4006

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn6_layer_call_fn_4570

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,���������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_14472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�
�
<__inference_bn2_layer_call_and_return_conditional_losses_948

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�|
�	
@__inference_VGGVox_layer_call_and_return_conditional_losses_2592
input_array

conv1_2472

conv1_2474
bn1_2477
bn1_2479
bn1_2481
bn1_2483

conv2_2488

conv2_2490
bn2_2493
bn2_2495
bn2_2497
bn2_2499

conv3_2504

conv3_2506
bn3_2509
bn3_2511
bn3_2513
bn3_2515

conv4_2520

conv4_2522
bn4_2525
bn4_2527
bn4_2529
bn4_2531

conv5_2536

conv5_2538
bn5_2541
bn5_2543
bn5_2545
bn5_2547
fc6_2552
fc6_2554
bn6_2557
bn6_2559
bn6_2561
bn6_2563
fc7_2570
fc7_2572
bn7_2575
bn7_2577
bn7_2579
bn7_2581
fc8_2586
fc8_2588
identity��bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�bn4/StatefulPartitionedCall�bn5/StatefulPartitionedCall�bn6/StatefulPartitionedCall�bn7/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�conv4/StatefulPartitionedCall�conv5/StatefulPartitionedCall�fc6/StatefulPartitionedCall�fc7/StatefulPartitionedCall�fc8/StatefulPartitionedCall�
pad1/PartitionedCallPartitionedCallinput_array*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad1_layer_call_and_return_conditional_losses_7632
pad1/PartitionedCall�
conv1/StatefulPartitionedCallStatefulPartitionedCallpad1/PartitionedCall:output:0
conv1_2472
conv1_2474*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_16032
conv1/StatefulPartitionedCall�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0bn1_2477bn1_2479bn1_2481bn1_2483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16562
bn1/StatefulPartitionedCall�
relu1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu1_layer_call_and_return_conditional_losses_16972
relu1/PartitionedCall�
pad2/PartitionedCallPartitionedCallrelu1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad2_layer_call_and_return_conditional_losses_8802
pad2/PartitionedCall�
conv2/StatefulPartitionedCallStatefulPartitionedCallpad2/PartitionedCall:output:0
conv2_2488
conv2_2490*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2_layer_call_and_return_conditional_losses_17162
conv2/StatefulPartitionedCall�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0bn2_2493bn2_2495bn2_2497bn2_2499*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17692
bn2/StatefulPartitionedCall�
relu2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_18102
relu2/PartitionedCall�
pad3/PartitionedCallPartitionedCallrelu2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad3_layer_call_and_return_conditional_losses_9972
pad3/PartitionedCall�
conv3/StatefulPartitionedCallStatefulPartitionedCallpad3/PartitionedCall:output:0
conv3_2504
conv3_2506*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_18292
conv3/StatefulPartitionedCall�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn3_2509bn3_2511bn3_2513bn3_2515*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18822
bn3/StatefulPartitionedCall�
relu3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu3_layer_call_and_return_conditional_losses_19232
relu3/PartitionedCall�
pad4/PartitionedCallPartitionedCallrelu3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad4_layer_call_and_return_conditional_losses_11142
pad4/PartitionedCall�
conv4/StatefulPartitionedCallStatefulPartitionedCallpad4/PartitionedCall:output:0
conv4_2520
conv4_2522*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv4_layer_call_and_return_conditional_losses_19422
conv4/StatefulPartitionedCall�
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv4/StatefulPartitionedCall:output:0bn4_2525bn4_2527bn4_2529bn4_2531*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19952
bn4/StatefulPartitionedCall�
relu4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu4_layer_call_and_return_conditional_losses_20362
relu4/PartitionedCall�
pad5/PartitionedCallPartitionedCallrelu4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad5_layer_call_and_return_conditional_losses_12312
pad5/PartitionedCall�
conv5/StatefulPartitionedCallStatefulPartitionedCallpad5/PartitionedCall:output:0
conv5_2536
conv5_2538*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv5_layer_call_and_return_conditional_losses_20552
conv5/StatefulPartitionedCall�
bn5/StatefulPartitionedCallStatefulPartitionedCall&conv5/StatefulPartitionedCall:output:0bn5_2541bn5_2543bn5_2545bn5_2547*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_21082
bn5/StatefulPartitionedCall�
relu5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_21492
relu5/PartitionedCall�
pad6/PartitionedCallPartitionedCallrelu5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad6_layer_call_and_return_conditional_losses_13482
pad6/PartitionedCall�
fc6/StatefulPartitionedCallStatefulPartitionedCallpad6/PartitionedCall:output:0fc6_2552fc6_2554*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc6_layer_call_and_return_conditional_losses_21682
fc6/StatefulPartitionedCall�
bn6/StatefulPartitionedCallStatefulPartitionedCall$fc6/StatefulPartitionedCall:output:0bn6_2557bn6_2559bn6_2561bn6_2563*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22212
bn6/StatefulPartitionedCall�
relu6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu6_layer_call_and_return_conditional_losses_22622
relu6/PartitionedCall�
 global_avg_pool6/PartitionedCallPartitionedCallrelu6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_14652"
 global_avg_pool6/PartitionedCall�
reshape6/PartitionedCallPartitionedCall)global_avg_pool6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape6_layer_call_and_return_conditional_losses_22852
reshape6/PartitionedCall�
pad7/PartitionedCallPartitionedCall!reshape6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad7_layer_call_and_return_conditional_losses_14782
pad7/PartitionedCall�
fc7/StatefulPartitionedCallStatefulPartitionedCallpad7/PartitionedCall:output:0fc7_2570fc7_2572*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc7_layer_call_and_return_conditional_losses_23042
fc7/StatefulPartitionedCall�
bn7/StatefulPartitionedCallStatefulPartitionedCall$fc7/StatefulPartitionedCall:output:0bn7_2575bn7_2577bn7_2579bn7_2581*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23572
bn7/StatefulPartitionedCall�
relu7/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu7_layer_call_and_return_conditional_losses_23982
relu7/PartitionedCall�
norm/PartitionedCallPartitionedCallrelu7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24282
norm/PartitionedCall�
fc8/StatefulPartitionedCallStatefulPartitionedCallnorm/PartitionedCall:output:0fc8_2586fc8_2588*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc8_layer_call_and_return_conditional_losses_24512
fc8/StatefulPartitionedCall�
IdentityIdentity$fc8/StatefulPartitionedCall:output:0^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall^conv5/StatefulPartitionedCall^fc6/StatefulPartitionedCall^fc7/StatefulPartitionedCall^fc8/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2>
conv5/StatefulPartitionedCallconv5/StatefulPartitionedCall2:
fc6/StatefulPartitionedCallfc6/StatefulPartitionedCall2:
fc7/StatefulPartitionedCallfc7/StatefulPartitionedCall2:
fc8/StatefulPartitionedCallfc8/StatefulPartitionedCall:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_4784

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_bn3_layer_call_fn_4150

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18642
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_4590

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_4073

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_1416

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,���������������������������� :� :� :� :� :*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_3805

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
y
$__inference_conv4_layer_call_fn_4192

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv4_layer_call_and_return_conditional_losses_19422
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_3759

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�
[
?__inference_relu2_layer_call_and_return_conditional_losses_1810

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
^
B__inference_reshape6_layer_call_and_return_conditional_losses_4658

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :� 2
Reshape/shape/3�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:���������� 2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:���������� 2

Identity"
identityIdentity:output:0*'
_input_shapes
:���������� :P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_1213

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
"__inference_bn1_layer_call_fn_3849

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_4276

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_1330

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu3_layer_call_and_return_conditional_losses_4168

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�

Z
>__inference_norm_layer_call_and_return_conditional_losses_4842

inputs
identityw
l2_normalize/SquareSquareinputs*
T0*0
_output_shapes
:����������2
l2_normalize/Square�
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"l2_normalize/Sum/reduction_indices�
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
l2_normalize/Sumu
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
l2_normalize/Maximum/y�
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
l2_normalize/Maximum�
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
l2_normalize/Rsqrt~
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
l2_normalizem
IdentityIdentityl2_normalize:z:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
@
$__inference_relu1_layer_call_fn_3859

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu1_layer_call_and_return_conditional_losses_16972
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#�������������������`:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
@
$__inference_relu6_layer_call_fn_4644

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu6_layer_call_and_return_conditional_losses_22622
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������v���������� :a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
�
%__inference_VGGVox_layer_call_fn_3609

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*@
_read_only_resource_inputs"
 	
 !"%&'(+,*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_VGGVox_layer_call_and_return_conditional_losses_27192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
Z
>__inference_pad4_layer_call_and_return_conditional_losses_1114

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu7_layer_call_and_return_conditional_losses_2398

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:����������2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_2357

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
<__inference_bn2_layer_call_and_return_conditional_losses_979

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu4_layer_call_and_return_conditional_losses_4325

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
?
#__inference_pad6_layer_call_fn_1354

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad6_layer_call_and_return_conditional_losses_13482
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
 __inference__traced_restore_5168
file_prefix!
assignvariableop_conv1_kernel!
assignvariableop_1_conv1_bias 
assignvariableop_2_bn1_gamma
assignvariableop_3_bn1_beta&
"assignvariableop_4_bn1_moving_mean*
&assignvariableop_5_bn1_moving_variance#
assignvariableop_6_conv2_kernel!
assignvariableop_7_conv2_bias 
assignvariableop_8_bn2_gamma
assignvariableop_9_bn2_beta'
#assignvariableop_10_bn2_moving_mean+
'assignvariableop_11_bn2_moving_variance$
 assignvariableop_12_conv3_kernel"
assignvariableop_13_conv3_bias!
assignvariableop_14_bn3_gamma 
assignvariableop_15_bn3_beta'
#assignvariableop_16_bn3_moving_mean+
'assignvariableop_17_bn3_moving_variance$
 assignvariableop_18_conv4_kernel"
assignvariableop_19_conv4_bias!
assignvariableop_20_bn4_gamma 
assignvariableop_21_bn4_beta'
#assignvariableop_22_bn4_moving_mean+
'assignvariableop_23_bn4_moving_variance$
 assignvariableop_24_conv5_kernel"
assignvariableop_25_conv5_bias!
assignvariableop_26_bn5_gamma 
assignvariableop_27_bn5_beta'
#assignvariableop_28_bn5_moving_mean+
'assignvariableop_29_bn5_moving_variance"
assignvariableop_30_fc6_kernel 
assignvariableop_31_fc6_bias!
assignvariableop_32_bn6_gamma 
assignvariableop_33_bn6_beta'
#assignvariableop_34_bn6_moving_mean+
'assignvariableop_35_bn6_moving_variance"
assignvariableop_36_fc7_kernel 
assignvariableop_37_fc7_bias!
assignvariableop_38_bn7_gamma 
assignvariableop_39_bn7_beta'
#assignvariableop_40_bn7_moving_mean+
'assignvariableop_41_bn7_moving_variance"
assignvariableop_42_fc8_kernel 
assignvariableop_43_fc8_bias
identity_45��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn2_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn2_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp assignvariableop_12_conv3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn3_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn3_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn3_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn3_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp assignvariableop_18_conv4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_bn4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_bn4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_bn4_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp'assignvariableop_23_bn4_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp assignvariableop_24_conv5_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpassignvariableop_25_conv5_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpassignvariableop_26_bn5_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpassignvariableop_27_bn5_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_bn5_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp'assignvariableop_29_bn5_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOpassignvariableop_30_fc6_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpassignvariableop_31_fc6_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOpassignvariableop_32_bn6_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOpassignvariableop_33_bn6_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp#assignvariableop_34_bn6_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp'assignvariableop_35_bn6_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpassignvariableop_36_fc7_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOpassignvariableop_37_fc7_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOpassignvariableop_38_bn7_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpassignvariableop_39_bn7_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp#assignvariableop_40_bn7_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp'assignvariableop_41_bn7_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpassignvariableop_42_fc8_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOpassignvariableop_43_fc8_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_439
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_44�
Identity_45IdentityIdentity_44:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_45"#
identity_45Identity_45:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432(
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
�
?
#__inference_pad7_layer_call_fn_1484

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad7_layer_call_and_return_conditional_losses_14782
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
<__inference_bn1_layer_call_and_return_conditional_losses_862

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�
�
"__inference_bn1_layer_call_fn_3836

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16382
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
[
?__inference_relu4_layer_call_and_return_conditional_losses_2036

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
y
$__inference_conv2_layer_call_fn_3878

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2_layer_call_and_return_conditional_losses_17162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������`::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�|
�	
@__inference_VGGVox_layer_call_and_return_conditional_losses_2936

inputs

conv1_2816

conv1_2818
bn1_2821
bn1_2823
bn1_2825
bn1_2827

conv2_2832

conv2_2834
bn2_2837
bn2_2839
bn2_2841
bn2_2843

conv3_2848

conv3_2850
bn3_2853
bn3_2855
bn3_2857
bn3_2859

conv4_2864

conv4_2866
bn4_2869
bn4_2871
bn4_2873
bn4_2875

conv5_2880

conv5_2882
bn5_2885
bn5_2887
bn5_2889
bn5_2891
fc6_2896
fc6_2898
bn6_2901
bn6_2903
bn6_2905
bn6_2907
fc7_2914
fc7_2916
bn7_2919
bn7_2921
bn7_2923
bn7_2925
fc8_2930
fc8_2932
identity��bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�bn4/StatefulPartitionedCall�bn5/StatefulPartitionedCall�bn6/StatefulPartitionedCall�bn7/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�conv4/StatefulPartitionedCall�conv5/StatefulPartitionedCall�fc6/StatefulPartitionedCall�fc7/StatefulPartitionedCall�fc8/StatefulPartitionedCall�
pad1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad1_layer_call_and_return_conditional_losses_7632
pad1/PartitionedCall�
conv1/StatefulPartitionedCallStatefulPartitionedCallpad1/PartitionedCall:output:0
conv1_2816
conv1_2818*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_16032
conv1/StatefulPartitionedCall�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0bn1_2821bn1_2823bn1_2825bn1_2827*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16562
bn1/StatefulPartitionedCall�
relu1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu1_layer_call_and_return_conditional_losses_16972
relu1/PartitionedCall�
pad2/PartitionedCallPartitionedCallrelu1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad2_layer_call_and_return_conditional_losses_8802
pad2/PartitionedCall�
conv2/StatefulPartitionedCallStatefulPartitionedCallpad2/PartitionedCall:output:0
conv2_2832
conv2_2834*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2_layer_call_and_return_conditional_losses_17162
conv2/StatefulPartitionedCall�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0bn2_2837bn2_2839bn2_2841bn2_2843*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17692
bn2/StatefulPartitionedCall�
relu2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_18102
relu2/PartitionedCall�
pad3/PartitionedCallPartitionedCallrelu2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad3_layer_call_and_return_conditional_losses_9972
pad3/PartitionedCall�
conv3/StatefulPartitionedCallStatefulPartitionedCallpad3/PartitionedCall:output:0
conv3_2848
conv3_2850*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_18292
conv3/StatefulPartitionedCall�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn3_2853bn3_2855bn3_2857bn3_2859*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18822
bn3/StatefulPartitionedCall�
relu3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu3_layer_call_and_return_conditional_losses_19232
relu3/PartitionedCall�
pad4/PartitionedCallPartitionedCallrelu3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad4_layer_call_and_return_conditional_losses_11142
pad4/PartitionedCall�
conv4/StatefulPartitionedCallStatefulPartitionedCallpad4/PartitionedCall:output:0
conv4_2864
conv4_2866*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv4_layer_call_and_return_conditional_losses_19422
conv4/StatefulPartitionedCall�
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv4/StatefulPartitionedCall:output:0bn4_2869bn4_2871bn4_2873bn4_2875*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19952
bn4/StatefulPartitionedCall�
relu4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu4_layer_call_and_return_conditional_losses_20362
relu4/PartitionedCall�
pad5/PartitionedCallPartitionedCallrelu4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad5_layer_call_and_return_conditional_losses_12312
pad5/PartitionedCall�
conv5/StatefulPartitionedCallStatefulPartitionedCallpad5/PartitionedCall:output:0
conv5_2880
conv5_2882*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv5_layer_call_and_return_conditional_losses_20552
conv5/StatefulPartitionedCall�
bn5/StatefulPartitionedCallStatefulPartitionedCall&conv5/StatefulPartitionedCall:output:0bn5_2885bn5_2887bn5_2889bn5_2891*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_21082
bn5/StatefulPartitionedCall�
relu5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_21492
relu5/PartitionedCall�
pad6/PartitionedCallPartitionedCallrelu5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad6_layer_call_and_return_conditional_losses_13482
pad6/PartitionedCall�
fc6/StatefulPartitionedCallStatefulPartitionedCallpad6/PartitionedCall:output:0fc6_2896fc6_2898*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc6_layer_call_and_return_conditional_losses_21682
fc6/StatefulPartitionedCall�
bn6/StatefulPartitionedCallStatefulPartitionedCall$fc6/StatefulPartitionedCall:output:0bn6_2901bn6_2903bn6_2905bn6_2907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22212
bn6/StatefulPartitionedCall�
relu6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu6_layer_call_and_return_conditional_losses_22622
relu6/PartitionedCall�
 global_avg_pool6/PartitionedCallPartitionedCallrelu6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_14652"
 global_avg_pool6/PartitionedCall�
reshape6/PartitionedCallPartitionedCall)global_avg_pool6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape6_layer_call_and_return_conditional_losses_22852
reshape6/PartitionedCall�
pad7/PartitionedCallPartitionedCall!reshape6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad7_layer_call_and_return_conditional_losses_14782
pad7/PartitionedCall�
fc7/StatefulPartitionedCallStatefulPartitionedCallpad7/PartitionedCall:output:0fc7_2914fc7_2916*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc7_layer_call_and_return_conditional_losses_23042
fc7/StatefulPartitionedCall�
bn7/StatefulPartitionedCallStatefulPartitionedCall$fc7/StatefulPartitionedCall:output:0bn7_2919bn7_2921bn7_2923bn7_2925*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23572
bn7/StatefulPartitionedCall�
relu7/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu7_layer_call_and_return_conditional_losses_23982
relu7/PartitionedCall�
norm/PartitionedCallPartitionedCallrelu7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24282
norm/PartitionedCall�
fc8/StatefulPartitionedCallStatefulPartitionedCallnorm/PartitionedCall:output:0fc8_2930fc8_2932*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc8_layer_call_and_return_conditional_losses_24512
fc8/StatefulPartitionedCall�
IdentityIdentity$fc8/StatefulPartitionedCall:output:0^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall^conv5/StatefulPartitionedCall^fc6/StatefulPartitionedCall^fc7/StatefulPartitionedCall^fc8/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2>
conv5/StatefulPartitionedCallconv5/StatefulPartitionedCall2:
fc6/StatefulPartitionedCallfc6/StatefulPartitionedCall2:
fc7/StatefulPartitionedCallfc7/StatefulPartitionedCall2:
fc8/StatefulPartitionedCallfc8/StatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
@
$__inference_relu2_layer_call_fn_4016

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_18102
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn7_layer_call_fn_4810

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
"__inference_bn5_layer_call_fn_4413

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_13302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_1864

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
%__inference_VGGVox_layer_call_fn_2810
input_array
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_arrayunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*@
_read_only_resource_inputs"
 	
 !"%&'(+,*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_VGGVox_layer_call_and_return_conditional_losses_27192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_1447

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,���������������������������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,���������������������������� 2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,���������������������������� ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,���������������������������� 
 
_user_specified_nameinputs
�
�
"__inference_bn1_layer_call_fn_3785

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������`*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__inference_bn1_layer_call_and_return_conditional_losses_8622
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�
�
"__inference_bn7_layer_call_fn_4746

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_15772
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
y
$__inference_conv5_layer_call_fn_4349

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv5_layer_call_and_return_conditional_losses_20552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�

�
?__inference_conv4_layer_call_and_return_conditional_losses_4183

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
�
"__inference_bn6_layer_call_fn_4621

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
w
"__inference_fc6_layer_call_fn_4506

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc6_layer_call_and_return_conditional_losses_21682
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#���������~����������::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_1769

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn5_layer_call_fn_4464

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_20902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
@
$__inference_relu3_layer_call_fn_4173

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu3_layer_call_and_return_conditional_losses_19232
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn6_layer_call_fn_4634

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22212
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_1656

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#�������������������`::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#�������������������`
 
_user_specified_nameinputs
�
�
%__inference_VGGVox_layer_call_fn_3027
input_array
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_arrayunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_VGGVox_layer_call_and_return_conditional_losses_29362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�
@
$__inference_relu5_layer_call_fn_4487

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_21492
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�

�
?__inference_conv3_layer_call_and_return_conditional_losses_1829

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
@
$__inference_relu7_layer_call_fn_4820

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu7_layer_call_and_return_conditional_losses_23982
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_4055

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu7_layer_call_and_return_conditional_losses_4815

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:����������2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_1751

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
@
$__inference_relu4_layer_call_fn_4330

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu4_layer_call_and_return_conditional_losses_20362
PartitionedCall~
IdentityIdentityPartitionedCall:output:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_4433

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
%__inference_VGGVox_layer_call_fn_3702

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_VGGVox_layer_call_and_return_conditional_losses_29362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_3980

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
w
"__inference_fc7_layer_call_fn_4682

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc7_layer_call_and_return_conditional_losses_23042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:���������� ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
[
?__inference_relu2_layer_call_and_return_conditional_losses_4011

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn4_layer_call_fn_4243

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19772
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_1065

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
?
#__inference_pad4_layer_call_fn_1120

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad4_layer_call_and_return_conditional_losses_11142
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
=__inference_fc8_layer_call_and_return_conditional_losses_4862

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�|
�	
@__inference_VGGVox_layer_call_and_return_conditional_losses_2719

inputs

conv1_2599

conv1_2601
bn1_2604
bn1_2606
bn1_2608
bn1_2610

conv2_2615

conv2_2617
bn2_2620
bn2_2622
bn2_2624
bn2_2626

conv3_2631

conv3_2633
bn3_2636
bn3_2638
bn3_2640
bn3_2642

conv4_2647

conv4_2649
bn4_2652
bn4_2654
bn4_2656
bn4_2658

conv5_2663

conv5_2665
bn5_2668
bn5_2670
bn5_2672
bn5_2674
fc6_2679
fc6_2681
bn6_2684
bn6_2686
bn6_2688
bn6_2690
fc7_2697
fc7_2699
bn7_2702
bn7_2704
bn7_2706
bn7_2708
fc8_2713
fc8_2715
identity��bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�bn4/StatefulPartitionedCall�bn5/StatefulPartitionedCall�bn6/StatefulPartitionedCall�bn7/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�conv4/StatefulPartitionedCall�conv5/StatefulPartitionedCall�fc6/StatefulPartitionedCall�fc7/StatefulPartitionedCall�fc8/StatefulPartitionedCall�
pad1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad1_layer_call_and_return_conditional_losses_7632
pad1/PartitionedCall�
conv1/StatefulPartitionedCallStatefulPartitionedCallpad1/PartitionedCall:output:0
conv1_2599
conv1_2601*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_16032
conv1/StatefulPartitionedCall�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0bn1_2604bn1_2606bn1_2608bn1_2610*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn1_layer_call_and_return_conditional_losses_16382
bn1/StatefulPartitionedCall�
relu1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu1_layer_call_and_return_conditional_losses_16972
relu1/PartitionedCall�
pad2/PartitionedCallPartitionedCallrelu1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad2_layer_call_and_return_conditional_losses_8802
pad2/PartitionedCall�
conv2/StatefulPartitionedCallStatefulPartitionedCallpad2/PartitionedCall:output:0
conv2_2615
conv2_2617*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv2_layer_call_and_return_conditional_losses_17162
conv2/StatefulPartitionedCall�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0bn2_2620bn2_2622bn2_2624bn2_2626*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn2_layer_call_and_return_conditional_losses_17512
bn2/StatefulPartitionedCall�
relu2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu2_layer_call_and_return_conditional_losses_18102
relu2/PartitionedCall�
pad3/PartitionedCallPartitionedCallrelu2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad3_layer_call_and_return_conditional_losses_9972
pad3/PartitionedCall�
conv3/StatefulPartitionedCallStatefulPartitionedCallpad3/PartitionedCall:output:0
conv3_2631
conv3_2633*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_18292
conv3/StatefulPartitionedCall�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0bn3_2636bn3_2638bn3_2640bn3_2642*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_18642
bn3/StatefulPartitionedCall�
relu3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu3_layer_call_and_return_conditional_losses_19232
relu3/PartitionedCall�
pad4/PartitionedCallPartitionedCallrelu3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad4_layer_call_and_return_conditional_losses_11142
pad4/PartitionedCall�
conv4/StatefulPartitionedCallStatefulPartitionedCallpad4/PartitionedCall:output:0
conv4_2647
conv4_2649*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv4_layer_call_and_return_conditional_losses_19422
conv4/StatefulPartitionedCall�
bn4/StatefulPartitionedCallStatefulPartitionedCall&conv4/StatefulPartitionedCall:output:0bn4_2652bn4_2654bn4_2656bn4_2658*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19772
bn4/StatefulPartitionedCall�
relu4/PartitionedCallPartitionedCall$bn4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu4_layer_call_and_return_conditional_losses_20362
relu4/PartitionedCall�
pad5/PartitionedCallPartitionedCallrelu4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:$��������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad5_layer_call_and_return_conditional_losses_12312
pad5/PartitionedCall�
conv5/StatefulPartitionedCallStatefulPartitionedCallpad5/PartitionedCall:output:0
conv5_2663
conv5_2665*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv5_layer_call_and_return_conditional_losses_20552
conv5/StatefulPartitionedCall�
bn5/StatefulPartitionedCallStatefulPartitionedCall&conv5/StatefulPartitionedCall:output:0bn5_2668bn5_2670bn5_2672bn5_2674*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn5_layer_call_and_return_conditional_losses_20902
bn5/StatefulPartitionedCall�
relu5/PartitionedCallPartitionedCall$bn5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu5_layer_call_and_return_conditional_losses_21492
relu5/PartitionedCall�
pad6/PartitionedCallPartitionedCallrelu5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad6_layer_call_and_return_conditional_losses_13482
pad6/PartitionedCall�
fc6/StatefulPartitionedCallStatefulPartitionedCallpad6/PartitionedCall:output:0fc6_2679fc6_2681*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc6_layer_call_and_return_conditional_losses_21682
fc6/StatefulPartitionedCall�
bn6/StatefulPartitionedCallStatefulPartitionedCall$fc6/StatefulPartitionedCall:output:0bn6_2684bn6_2686bn6_2688bn6_2690*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn6_layer_call_and_return_conditional_losses_22032
bn6/StatefulPartitionedCall�
relu6/PartitionedCallPartitionedCall$bn6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������v���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu6_layer_call_and_return_conditional_losses_22622
relu6/PartitionedCall�
 global_avg_pool6/PartitionedCallPartitionedCallrelu6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_14652"
 global_avg_pool6/PartitionedCall�
reshape6/PartitionedCallPartitionedCall)global_avg_pool6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_reshape6_layer_call_and_return_conditional_losses_22852
reshape6/PartitionedCall�
pad7/PartitionedCallPartitionedCall!reshape6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad7_layer_call_and_return_conditional_losses_14782
pad7/PartitionedCall�
fc7/StatefulPartitionedCallStatefulPartitionedCallpad7/PartitionedCall:output:0fc7_2697fc7_2699*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc7_layer_call_and_return_conditional_losses_23042
fc7/StatefulPartitionedCall�
bn7/StatefulPartitionedCallStatefulPartitionedCall$fc7/StatefulPartitionedCall:output:0bn7_2702bn7_2704bn7_2706bn7_2708*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn7_layer_call_and_return_conditional_losses_23392
bn7/StatefulPartitionedCall�
relu7/PartitionedCallPartitionedCall$bn7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_relu7_layer_call_and_return_conditional_losses_23982
relu7/PartitionedCall�
norm/PartitionedCallPartitionedCallrelu7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24172
norm/PartitionedCall�
fc8/StatefulPartitionedCallStatefulPartitionedCallnorm/PartitionedCall:output:0fc8_2713fc8_2715*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc8_layer_call_and_return_conditional_losses_24512
fc8/StatefulPartitionedCall�
IdentityIdentity$fc8/StatefulPartitionedCall:output:0^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^bn4/StatefulPartitionedCall^bn5/StatefulPartitionedCall^bn6/StatefulPartitionedCall^bn7/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^conv4/StatefulPartitionedCall^conv5/StatefulPartitionedCall^fc6/StatefulPartitionedCall^fc7/StatefulPartitionedCall^fc8/StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2:
bn4/StatefulPartitionedCallbn4/StatefulPartitionedCall2:
bn5/StatefulPartitionedCallbn5/StatefulPartitionedCall2:
bn6/StatefulPartitionedCallbn6/StatefulPartitionedCall2:
bn7/StatefulPartitionedCallbn7/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2>
conv4/StatefulPartitionedCallconv4/StatefulPartitionedCall2>
conv5/StatefulPartitionedCallconv5/StatefulPartitionedCall2:
fc6/StatefulPartitionedCallfc6/StatefulPartitionedCall2:
fc7/StatefulPartitionedCallfc7/StatefulPartitionedCall2:
fc8/StatefulPartitionedCallfc8/StatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
?
#__inference_pad3_layer_call_fn_1003

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad3_layer_call_and_return_conditional_losses_9972
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
?
#__inference_norm_layer_call_fn_4847

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24172
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn1_layer_call_and_return_conditional_losses_3741

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:`*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:`*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������`:`:`:`:`:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������`2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+���������������������������`::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������`
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_4137

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�

�
=__inference_fc6_layer_call_and_return_conditional_losses_2168

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:	�� *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:� *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#���������~����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
��
�
__inference__wrapped_model_756
input_array/
+vggvox_conv1_conv2d_readvariableop_resource0
,vggvox_conv1_biasadd_readvariableop_resource&
"vggvox_bn1_readvariableop_resource(
$vggvox_bn1_readvariableop_1_resource7
3vggvox_bn1_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn1_fusedbatchnormv3_readvariableop_1_resource/
+vggvox_conv2_conv2d_readvariableop_resource0
,vggvox_conv2_biasadd_readvariableop_resource&
"vggvox_bn2_readvariableop_resource(
$vggvox_bn2_readvariableop_1_resource7
3vggvox_bn2_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn2_fusedbatchnormv3_readvariableop_1_resource/
+vggvox_conv3_conv2d_readvariableop_resource0
,vggvox_conv3_biasadd_readvariableop_resource&
"vggvox_bn3_readvariableop_resource(
$vggvox_bn3_readvariableop_1_resource7
3vggvox_bn3_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn3_fusedbatchnormv3_readvariableop_1_resource/
+vggvox_conv4_conv2d_readvariableop_resource0
,vggvox_conv4_biasadd_readvariableop_resource&
"vggvox_bn4_readvariableop_resource(
$vggvox_bn4_readvariableop_1_resource7
3vggvox_bn4_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn4_fusedbatchnormv3_readvariableop_1_resource/
+vggvox_conv5_conv2d_readvariableop_resource0
,vggvox_conv5_biasadd_readvariableop_resource&
"vggvox_bn5_readvariableop_resource(
$vggvox_bn5_readvariableop_1_resource7
3vggvox_bn5_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn5_fusedbatchnormv3_readvariableop_1_resource-
)vggvox_fc6_conv2d_readvariableop_resource.
*vggvox_fc6_biasadd_readvariableop_resource&
"vggvox_bn6_readvariableop_resource(
$vggvox_bn6_readvariableop_1_resource7
3vggvox_bn6_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn6_fusedbatchnormv3_readvariableop_1_resource-
)vggvox_fc7_conv2d_readvariableop_resource.
*vggvox_fc7_biasadd_readvariableop_resource&
"vggvox_bn7_readvariableop_resource(
$vggvox_bn7_readvariableop_1_resource7
3vggvox_bn7_fusedbatchnormv3_readvariableop_resource9
5vggvox_bn7_fusedbatchnormv3_readvariableop_1_resource-
)vggvox_fc8_conv2d_readvariableop_resource.
*vggvox_fc8_biasadd_readvariableop_resource
identity��*VGGVox/bn1/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn1/ReadVariableOp�VGGVox/bn1/ReadVariableOp_1�*VGGVox/bn2/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn2/ReadVariableOp�VGGVox/bn2/ReadVariableOp_1�*VGGVox/bn3/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn3/ReadVariableOp�VGGVox/bn3/ReadVariableOp_1�*VGGVox/bn4/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn4/ReadVariableOp�VGGVox/bn4/ReadVariableOp_1�*VGGVox/bn5/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn5/ReadVariableOp�VGGVox/bn5/ReadVariableOp_1�*VGGVox/bn6/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn6/ReadVariableOp�VGGVox/bn6/ReadVariableOp_1�*VGGVox/bn7/FusedBatchNormV3/ReadVariableOp�,VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1�VGGVox/bn7/ReadVariableOp�VGGVox/bn7/ReadVariableOp_1�#VGGVox/conv1/BiasAdd/ReadVariableOp�"VGGVox/conv1/Conv2D/ReadVariableOp�#VGGVox/conv2/BiasAdd/ReadVariableOp�"VGGVox/conv2/Conv2D/ReadVariableOp�#VGGVox/conv3/BiasAdd/ReadVariableOp�"VGGVox/conv3/Conv2D/ReadVariableOp�#VGGVox/conv4/BiasAdd/ReadVariableOp�"VGGVox/conv4/Conv2D/ReadVariableOp�#VGGVox/conv5/BiasAdd/ReadVariableOp�"VGGVox/conv5/Conv2D/ReadVariableOp�!VGGVox/fc6/BiasAdd/ReadVariableOp� VGGVox/fc6/Conv2D/ReadVariableOp�!VGGVox/fc7/BiasAdd/ReadVariableOp� VGGVox/fc7/Conv2D/ReadVariableOp�!VGGVox/fc8/BiasAdd/ReadVariableOp� VGGVox/fc8/Conv2D/ReadVariableOp�
VGGVox/pad1/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
VGGVox/pad1/Pad/paddings�
VGGVox/pad1/PadPadinput_array!VGGVox/pad1/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������2
VGGVox/pad1/Pad�
"VGGVox/conv1/Conv2D/ReadVariableOpReadVariableOp+vggvox_conv1_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02$
"VGGVox/conv1/Conv2D/ReadVariableOp�
VGGVox/conv1/Conv2DConv2DVGGVox/pad1/Pad:output:0*VGGVox/conv1/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`*
paddingVALID*
strides
2
VGGVox/conv1/Conv2D�
#VGGVox/conv1/BiasAdd/ReadVariableOpReadVariableOp,vggvox_conv1_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02%
#VGGVox/conv1/BiasAdd/ReadVariableOp�
VGGVox/conv1/BiasAddBiasAddVGGVox/conv1/Conv2D:output:0+VGGVox/conv1/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`2
VGGVox/conv1/BiasAdd�
VGGVox/bn1/ReadVariableOpReadVariableOp"vggvox_bn1_readvariableop_resource*
_output_shapes
:`*
dtype02
VGGVox/bn1/ReadVariableOp�
VGGVox/bn1/ReadVariableOp_1ReadVariableOp$vggvox_bn1_readvariableop_1_resource*
_output_shapes
:`*
dtype02
VGGVox/bn1/ReadVariableOp_1�
*VGGVox/bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:`*
dtype02,
*VGGVox/bn1/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:`*
dtype02.
,VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn1/FusedBatchNormV3FusedBatchNormV3VGGVox/conv1/BiasAdd:output:0!VGGVox/bn1/ReadVariableOp:value:0#VGGVox/bn1/ReadVariableOp_1:value:02VGGVox/bn1/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*U
_output_shapesC
A:#�������������������`:`:`:`:`:*
epsilon%��'7*
is_training( 2
VGGVox/bn1/FusedBatchNormV3�
VGGVox/relu1/ReluReluVGGVox/bn1/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#�������������������`2
VGGVox/relu1/Relu�
VGGVox/pad2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
VGGVox/pad2/Pad/paddings�
VGGVox/pad2/PadPadVGGVox/relu1/Relu:activations:0!VGGVox/pad2/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#�������������������`2
VGGVox/pad2/Pad�
"VGGVox/conv2/Conv2D/ReadVariableOpReadVariableOp+vggvox_conv2_conv2d_readvariableop_resource*'
_output_shapes
:`�*
dtype02$
"VGGVox/conv2/Conv2D/ReadVariableOp�
VGGVox/conv2/Conv2DConv2DVGGVox/pad2/Pad:output:0*VGGVox/conv2/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
VGGVox/conv2/Conv2D�
#VGGVox/conv2/BiasAdd/ReadVariableOpReadVariableOp,vggvox_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#VGGVox/conv2/BiasAdd/ReadVariableOp�
VGGVox/conv2/BiasAddBiasAddVGGVox/conv2/Conv2D:output:0+VGGVox/conv2/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/conv2/BiasAdd�
VGGVox/bn2/ReadVariableOpReadVariableOp"vggvox_bn2_readvariableop_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn2/ReadVariableOp�
VGGVox/bn2/ReadVariableOp_1ReadVariableOp$vggvox_bn2_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn2/ReadVariableOp_1�
*VGGVox/bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*VGGVox/bn2/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn2/FusedBatchNormV3FusedBatchNormV3VGGVox/conv2/BiasAdd:output:0!VGGVox/bn2/ReadVariableOp:value:0#VGGVox/bn2/ReadVariableOp_1:value:02VGGVox/bn2/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
VGGVox/bn2/FusedBatchNormV3�
VGGVox/relu2/ReluReluVGGVox/bn2/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/relu2/Relu�
VGGVox/pad3/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
VGGVox/pad3/Pad/paddings�
VGGVox/pad3/PadPadVGGVox/relu2/Relu:activations:0!VGGVox/pad3/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2
VGGVox/pad3/Pad�
"VGGVox/conv3/Conv2D/ReadVariableOpReadVariableOp+vggvox_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"VGGVox/conv3/Conv2D/ReadVariableOp�
VGGVox/conv3/Conv2DConv2DVGGVox/pad3/Pad:output:0*VGGVox/conv3/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
VGGVox/conv3/Conv2D�
#VGGVox/conv3/BiasAdd/ReadVariableOpReadVariableOp,vggvox_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#VGGVox/conv3/BiasAdd/ReadVariableOp�
VGGVox/conv3/BiasAddBiasAddVGGVox/conv3/Conv2D:output:0+VGGVox/conv3/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/conv3/BiasAdd�
VGGVox/bn3/ReadVariableOpReadVariableOp"vggvox_bn3_readvariableop_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn3/ReadVariableOp�
VGGVox/bn3/ReadVariableOp_1ReadVariableOp$vggvox_bn3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn3/ReadVariableOp_1�
*VGGVox/bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*VGGVox/bn3/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn3/FusedBatchNormV3FusedBatchNormV3VGGVox/conv3/BiasAdd:output:0!VGGVox/bn3/ReadVariableOp:value:0#VGGVox/bn3/ReadVariableOp_1:value:02VGGVox/bn3/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
VGGVox/bn3/FusedBatchNormV3�
VGGVox/relu3/ReluReluVGGVox/bn3/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/relu3/Relu�
VGGVox/pad4/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
VGGVox/pad4/Pad/paddings�
VGGVox/pad4/PadPadVGGVox/relu3/Relu:activations:0!VGGVox/pad4/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2
VGGVox/pad4/Pad�
"VGGVox/conv4/Conv2D/ReadVariableOpReadVariableOp+vggvox_conv4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"VGGVox/conv4/Conv2D/ReadVariableOp�
VGGVox/conv4/Conv2DConv2DVGGVox/pad4/Pad:output:0*VGGVox/conv4/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
VGGVox/conv4/Conv2D�
#VGGVox/conv4/BiasAdd/ReadVariableOpReadVariableOp,vggvox_conv4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#VGGVox/conv4/BiasAdd/ReadVariableOp�
VGGVox/conv4/BiasAddBiasAddVGGVox/conv4/Conv2D:output:0+VGGVox/conv4/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/conv4/BiasAdd�
VGGVox/bn4/ReadVariableOpReadVariableOp"vggvox_bn4_readvariableop_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn4/ReadVariableOp�
VGGVox/bn4/ReadVariableOp_1ReadVariableOp$vggvox_bn4_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn4/ReadVariableOp_1�
*VGGVox/bn4/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*VGGVox/bn4/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn4/FusedBatchNormV3FusedBatchNormV3VGGVox/conv4/BiasAdd:output:0!VGGVox/bn4/ReadVariableOp:value:0#VGGVox/bn4/ReadVariableOp_1:value:02VGGVox/bn4/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
VGGVox/bn4/FusedBatchNormV3�
VGGVox/relu4/ReluReluVGGVox/bn4/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/relu4/Relu�
VGGVox/pad5/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
VGGVox/pad5/Pad/paddings�
VGGVox/pad5/PadPadVGGVox/relu4/Relu:activations:0!VGGVox/pad5/Pad/paddings:output:0*
T0*:
_output_shapes(
&:$��������������������2
VGGVox/pad5/Pad�
"VGGVox/conv5/Conv2D/ReadVariableOpReadVariableOp+vggvox_conv5_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02$
"VGGVox/conv5/Conv2D/ReadVariableOp�
VGGVox/conv5/Conv2DConv2DVGGVox/pad5/Pad:output:0*VGGVox/conv5/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
VGGVox/conv5/Conv2D�
#VGGVox/conv5/BiasAdd/ReadVariableOpReadVariableOp,vggvox_conv5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02%
#VGGVox/conv5/BiasAdd/ReadVariableOp�
VGGVox/conv5/BiasAddBiasAddVGGVox/conv5/Conv2D:output:0+VGGVox/conv5/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/conv5/BiasAdd�
VGGVox/bn5/ReadVariableOpReadVariableOp"vggvox_bn5_readvariableop_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn5/ReadVariableOp�
VGGVox/bn5/ReadVariableOp_1ReadVariableOp$vggvox_bn5_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn5/ReadVariableOp_1�
*VGGVox/bn5/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*VGGVox/bn5/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn5/FusedBatchNormV3FusedBatchNormV3VGGVox/conv5/BiasAdd:output:0!VGGVox/bn5/ReadVariableOp:value:0#VGGVox/bn5/ReadVariableOp_1:value:02VGGVox/bn5/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
VGGVox/bn5/FusedBatchNormV3�
VGGVox/relu5/ReluReluVGGVox/bn5/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/relu5/Relu�
VGGVox/pad6/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
VGGVox/pad6/Pad/paddings�
VGGVox/pad6/PadPadVGGVox/relu5/Relu:activations:0!VGGVox/pad6/Pad/paddings:output:0*
T0*9
_output_shapes'
%:#���������~����������2
VGGVox/pad6/Pad�
 VGGVox/fc6/Conv2D/ReadVariableOpReadVariableOp)vggvox_fc6_conv2d_readvariableop_resource*(
_output_shapes
:	�� *
dtype02"
 VGGVox/fc6/Conv2D/ReadVariableOp�
VGGVox/fc6/Conv2DConv2DVGGVox/pad6/Pad:output:0(VGGVox/fc6/Conv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� *
paddingVALID*
strides
2
VGGVox/fc6/Conv2D�
!VGGVox/fc6/BiasAdd/ReadVariableOpReadVariableOp*vggvox_fc6_biasadd_readvariableop_resource*
_output_shapes	
:� *
dtype02#
!VGGVox/fc6/BiasAdd/ReadVariableOp�
VGGVox/fc6/BiasAddBiasAddVGGVox/fc6/Conv2D:output:0)VGGVox/fc6/BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� 2
VGGVox/fc6/BiasAdd�
VGGVox/bn6/ReadVariableOpReadVariableOp"vggvox_bn6_readvariableop_resource*
_output_shapes	
:� *
dtype02
VGGVox/bn6/ReadVariableOp�
VGGVox/bn6/ReadVariableOp_1ReadVariableOp$vggvox_bn6_readvariableop_1_resource*
_output_shapes	
:� *
dtype02
VGGVox/bn6/ReadVariableOp_1�
*VGGVox/bn6/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02,
*VGGVox/bn6/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02.
,VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn6/FusedBatchNormV3FusedBatchNormV3VGGVox/fc6/BiasAdd:output:0!VGGVox/bn6/ReadVariableOp:value:0#VGGVox/bn6/ReadVariableOp_1:value:02VGGVox/bn6/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
VGGVox/bn6/FusedBatchNormV3�
VGGVox/relu6/ReluReluVGGVox/bn6/FusedBatchNormV3:y:0*
T0*9
_output_shapes'
%:#���������v���������� 2
VGGVox/relu6/Relu�
.VGGVox/global_avg_pool6/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      20
.VGGVox/global_avg_pool6/Mean/reduction_indices�
VGGVox/global_avg_pool6/MeanMeanVGGVox/relu6/Relu:activations:07VGGVox/global_avg_pool6/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:���������� 2
VGGVox/global_avg_pool6/Mean�
VGGVox/reshape6/ShapeShape%VGGVox/global_avg_pool6/Mean:output:0*
T0*
_output_shapes
:2
VGGVox/reshape6/Shape�
#VGGVox/reshape6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#VGGVox/reshape6/strided_slice/stack�
%VGGVox/reshape6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%VGGVox/reshape6/strided_slice/stack_1�
%VGGVox/reshape6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%VGGVox/reshape6/strided_slice/stack_2�
VGGVox/reshape6/strided_sliceStridedSliceVGGVox/reshape6/Shape:output:0,VGGVox/reshape6/strided_slice/stack:output:0.VGGVox/reshape6/strided_slice/stack_1:output:0.VGGVox/reshape6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
VGGVox/reshape6/strided_slice�
VGGVox/reshape6/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2!
VGGVox/reshape6/Reshape/shape/1�
VGGVox/reshape6/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2!
VGGVox/reshape6/Reshape/shape/2�
VGGVox/reshape6/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :� 2!
VGGVox/reshape6/Reshape/shape/3�
VGGVox/reshape6/Reshape/shapePack&VGGVox/reshape6/strided_slice:output:0(VGGVox/reshape6/Reshape/shape/1:output:0(VGGVox/reshape6/Reshape/shape/2:output:0(VGGVox/reshape6/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
VGGVox/reshape6/Reshape/shape�
VGGVox/reshape6/ReshapeReshape%VGGVox/global_avg_pool6/Mean:output:0&VGGVox/reshape6/Reshape/shape:output:0*
T0*0
_output_shapes
:���������� 2
VGGVox/reshape6/Reshape�
VGGVox/pad7/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
VGGVox/pad7/Pad/paddings�
VGGVox/pad7/PadPad VGGVox/reshape6/Reshape:output:0!VGGVox/pad7/Pad/paddings:output:0*
T0*0
_output_shapes
:���������� 2
VGGVox/pad7/Pad�
 VGGVox/fc7/Conv2D/ReadVariableOpReadVariableOp)vggvox_fc7_conv2d_readvariableop_resource*(
_output_shapes
:� �*
dtype02"
 VGGVox/fc7/Conv2D/ReadVariableOp�
VGGVox/fc7/Conv2DConv2DVGGVox/pad7/Pad:output:0(VGGVox/fc7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
VGGVox/fc7/Conv2D�
!VGGVox/fc7/BiasAdd/ReadVariableOpReadVariableOp*vggvox_fc7_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!VGGVox/fc7/BiasAdd/ReadVariableOp�
VGGVox/fc7/BiasAddBiasAddVGGVox/fc7/Conv2D:output:0)VGGVox/fc7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
VGGVox/fc7/BiasAdd�
VGGVox/bn7/ReadVariableOpReadVariableOp"vggvox_bn7_readvariableop_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn7/ReadVariableOp�
VGGVox/bn7/ReadVariableOp_1ReadVariableOp$vggvox_bn7_readvariableop_1_resource*
_output_shapes	
:�*
dtype02
VGGVox/bn7/ReadVariableOp_1�
*VGGVox/bn7/FusedBatchNormV3/ReadVariableOpReadVariableOp3vggvox_bn7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*VGGVox/bn7/FusedBatchNormV3/ReadVariableOp�
,VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5vggvox_bn7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1�
VGGVox/bn7/FusedBatchNormV3FusedBatchNormV3VGGVox/fc7/BiasAdd:output:0!VGGVox/bn7/ReadVariableOp:value:0#VGGVox/bn7/ReadVariableOp_1:value:02VGGVox/bn7/FusedBatchNormV3/ReadVariableOp:value:04VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
VGGVox/bn7/FusedBatchNormV3�
VGGVox/relu7/ReluReluVGGVox/bn7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2
VGGVox/relu7/Relu�
VGGVox/norm/l2_normalize/SquareSquareVGGVox/relu7/Relu:activations:0*
T0*0
_output_shapes
:����������2!
VGGVox/norm/l2_normalize/Square�
.VGGVox/norm/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :20
.VGGVox/norm/l2_normalize/Sum/reduction_indices�
VGGVox/norm/l2_normalize/SumSum#VGGVox/norm/l2_normalize/Square:y:07VGGVox/norm/l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
VGGVox/norm/l2_normalize/Sum�
"VGGVox/norm/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2$
"VGGVox/norm/l2_normalize/Maximum/y�
 VGGVox/norm/l2_normalize/MaximumMaximum%VGGVox/norm/l2_normalize/Sum:output:0+VGGVox/norm/l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2"
 VGGVox/norm/l2_normalize/Maximum�
VGGVox/norm/l2_normalize/RsqrtRsqrt$VGGVox/norm/l2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2 
VGGVox/norm/l2_normalize/Rsqrt�
VGGVox/norm/l2_normalizeMulVGGVox/relu7/Relu:activations:0"VGGVox/norm/l2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
VGGVox/norm/l2_normalize�
 VGGVox/fc8/Conv2D/ReadVariableOpReadVariableOp)vggvox_fc8_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02"
 VGGVox/fc8/Conv2D/ReadVariableOp�
VGGVox/fc8/Conv2DConv2DVGGVox/norm/l2_normalize:z:0(VGGVox/fc8/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
VGGVox/fc8/Conv2D�
!VGGVox/fc8/BiasAdd/ReadVariableOpReadVariableOp*vggvox_fc8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02#
!VGGVox/fc8/BiasAdd/ReadVariableOp�
VGGVox/fc8/BiasAddBiasAddVGGVox/fc8/Conv2D:output:0)VGGVox/fc8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
VGGVox/fc8/BiasAdd�
IdentityIdentityVGGVox/fc8/BiasAdd:output:0+^VGGVox/bn1/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn1/ReadVariableOp^VGGVox/bn1/ReadVariableOp_1+^VGGVox/bn2/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn2/ReadVariableOp^VGGVox/bn2/ReadVariableOp_1+^VGGVox/bn3/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn3/ReadVariableOp^VGGVox/bn3/ReadVariableOp_1+^VGGVox/bn4/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn4/ReadVariableOp^VGGVox/bn4/ReadVariableOp_1+^VGGVox/bn5/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn5/ReadVariableOp^VGGVox/bn5/ReadVariableOp_1+^VGGVox/bn6/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn6/ReadVariableOp^VGGVox/bn6/ReadVariableOp_1+^VGGVox/bn7/FusedBatchNormV3/ReadVariableOp-^VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1^VGGVox/bn7/ReadVariableOp^VGGVox/bn7/ReadVariableOp_1$^VGGVox/conv1/BiasAdd/ReadVariableOp#^VGGVox/conv1/Conv2D/ReadVariableOp$^VGGVox/conv2/BiasAdd/ReadVariableOp#^VGGVox/conv2/Conv2D/ReadVariableOp$^VGGVox/conv3/BiasAdd/ReadVariableOp#^VGGVox/conv3/Conv2D/ReadVariableOp$^VGGVox/conv4/BiasAdd/ReadVariableOp#^VGGVox/conv4/Conv2D/ReadVariableOp$^VGGVox/conv5/BiasAdd/ReadVariableOp#^VGGVox/conv5/Conv2D/ReadVariableOp"^VGGVox/fc6/BiasAdd/ReadVariableOp!^VGGVox/fc6/Conv2D/ReadVariableOp"^VGGVox/fc7/BiasAdd/ReadVariableOp!^VGGVox/fc7/Conv2D/ReadVariableOp"^VGGVox/fc8/BiasAdd/ReadVariableOp!^VGGVox/fc8/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*�
_input_shapes�
�:#�������������������::::::::::::::::::::::::::::::::::::::::::::2X
*VGGVox/bn1/FusedBatchNormV3/ReadVariableOp*VGGVox/bn1/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn1/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn1/ReadVariableOpVGGVox/bn1/ReadVariableOp2:
VGGVox/bn1/ReadVariableOp_1VGGVox/bn1/ReadVariableOp_12X
*VGGVox/bn2/FusedBatchNormV3/ReadVariableOp*VGGVox/bn2/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn2/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn2/ReadVariableOpVGGVox/bn2/ReadVariableOp2:
VGGVox/bn2/ReadVariableOp_1VGGVox/bn2/ReadVariableOp_12X
*VGGVox/bn3/FusedBatchNormV3/ReadVariableOp*VGGVox/bn3/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn3/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn3/ReadVariableOpVGGVox/bn3/ReadVariableOp2:
VGGVox/bn3/ReadVariableOp_1VGGVox/bn3/ReadVariableOp_12X
*VGGVox/bn4/FusedBatchNormV3/ReadVariableOp*VGGVox/bn4/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn4/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn4/ReadVariableOpVGGVox/bn4/ReadVariableOp2:
VGGVox/bn4/ReadVariableOp_1VGGVox/bn4/ReadVariableOp_12X
*VGGVox/bn5/FusedBatchNormV3/ReadVariableOp*VGGVox/bn5/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn5/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn5/ReadVariableOpVGGVox/bn5/ReadVariableOp2:
VGGVox/bn5/ReadVariableOp_1VGGVox/bn5/ReadVariableOp_12X
*VGGVox/bn6/FusedBatchNormV3/ReadVariableOp*VGGVox/bn6/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn6/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn6/ReadVariableOpVGGVox/bn6/ReadVariableOp2:
VGGVox/bn6/ReadVariableOp_1VGGVox/bn6/ReadVariableOp_12X
*VGGVox/bn7/FusedBatchNormV3/ReadVariableOp*VGGVox/bn7/FusedBatchNormV3/ReadVariableOp2\
,VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_1,VGGVox/bn7/FusedBatchNormV3/ReadVariableOp_126
VGGVox/bn7/ReadVariableOpVGGVox/bn7/ReadVariableOp2:
VGGVox/bn7/ReadVariableOp_1VGGVox/bn7/ReadVariableOp_12J
#VGGVox/conv1/BiasAdd/ReadVariableOp#VGGVox/conv1/BiasAdd/ReadVariableOp2H
"VGGVox/conv1/Conv2D/ReadVariableOp"VGGVox/conv1/Conv2D/ReadVariableOp2J
#VGGVox/conv2/BiasAdd/ReadVariableOp#VGGVox/conv2/BiasAdd/ReadVariableOp2H
"VGGVox/conv2/Conv2D/ReadVariableOp"VGGVox/conv2/Conv2D/ReadVariableOp2J
#VGGVox/conv3/BiasAdd/ReadVariableOp#VGGVox/conv3/BiasAdd/ReadVariableOp2H
"VGGVox/conv3/Conv2D/ReadVariableOp"VGGVox/conv3/Conv2D/ReadVariableOp2J
#VGGVox/conv4/BiasAdd/ReadVariableOp#VGGVox/conv4/BiasAdd/ReadVariableOp2H
"VGGVox/conv4/Conv2D/ReadVariableOp"VGGVox/conv4/Conv2D/ReadVariableOp2J
#VGGVox/conv5/BiasAdd/ReadVariableOp#VGGVox/conv5/BiasAdd/ReadVariableOp2H
"VGGVox/conv5/Conv2D/ReadVariableOp"VGGVox/conv5/Conv2D/ReadVariableOp2F
!VGGVox/fc6/BiasAdd/ReadVariableOp!VGGVox/fc6/BiasAdd/ReadVariableOp2D
 VGGVox/fc6/Conv2D/ReadVariableOp VGGVox/fc6/Conv2D/ReadVariableOp2F
!VGGVox/fc7/BiasAdd/ReadVariableOp!VGGVox/fc7/BiasAdd/ReadVariableOp2D
 VGGVox/fc7/Conv2D/ReadVariableOp VGGVox/fc7/Conv2D/ReadVariableOp2F
!VGGVox/fc8/BiasAdd/ReadVariableOp!VGGVox/fc8/BiasAdd/ReadVariableOp2D
 VGGVox/fc8/Conv2D/ReadVariableOp VGGVox/fc8/Conv2D/ReadVariableOp:f b
9
_output_shapes'
%:#�������������������
%
_user_specified_nameinput_array
�
Z
>__inference_pad5_layer_call_and_return_conditional_losses_1231

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
=__inference_fc6_layer_call_and_return_conditional_losses_4497

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:	�� *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:� *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������v���������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#���������~����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
Y
=__inference_pad2_layer_call_and_return_conditional_losses_880

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
>
"__inference_pad2_layer_call_fn_886

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_pad2_layer_call_and_return_conditional_losses_8802
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu5_layer_call_and_return_conditional_losses_2149

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
y
$__inference_conv3_layer_call_fn_4035

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv3_layer_call_and_return_conditional_losses_18292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_4294

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

Z
>__inference_norm_layer_call_and_return_conditional_losses_2428

inputs
identityw
l2_normalize/SquareSquareinputs*
T0*0
_output_shapes
:����������2
l2_normalize/Square�
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"l2_normalize/Sum/reduction_indices�
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
l2_normalize/Sumu
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
l2_normalize/Maximum/y�
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
l2_normalize/Maximum�
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
l2_normalize/Rsqrt~
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
l2_normalizem
IdentityIdentityl2_normalize:z:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_2108

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
"__inference_bn4_layer_call_fn_4256

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#���������~����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn4_layer_call_and_return_conditional_losses_19952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_1977

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn3_layer_call_and_return_conditional_losses_1096

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_4387

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_1299

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
?__inference_conv4_layer_call_and_return_conditional_losses_1942

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#���������~����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:$��������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:b ^
:
_output_shapes(
&:$��������������������
 
_user_specified_nameinputs
�
�
=__inference_bn7_layer_call_and_return_conditional_losses_1546

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
[
?__inference_relu3_layer_call_and_return_conditional_losses_1923

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
f
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_1465

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_1182

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_2221

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�

�
?__inference_conv1_layer_call_and_return_conditional_losses_3712

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*9
_output_shapes'
%:#�������������������`2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
=__inference_bn6_layer_call_and_return_conditional_losses_4608

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:� *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:� *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:� *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������v���������� :� :� :� :� :*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������v���������� 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������v���������� ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������v���������� 
 
_user_specified_nameinputs
�
y
$__inference_conv1_layer_call_fn_3721

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:#�������������������`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *H
fCRA
?__inference_conv1_layer_call_and_return_conditional_losses_16032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*9
_output_shapes'
%:#�������������������`2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:#�������������������::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
9
_output_shapes'
%:#�������������������
 
_user_specified_nameinputs
�
�
"__inference_bn3_layer_call_fn_4086

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_bn3_layer_call_and_return_conditional_losses_10652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,����������������������������::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
=__inference_bn4_layer_call_and_return_conditional_losses_1995

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn2_layer_call_and_return_conditional_losses_3962

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
exponential_avg_factor%    2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
�
=__inference_bn5_layer_call_and_return_conditional_losses_4451

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Y
_output_shapesG
E:#���������~����������:�:�:�:�:*
epsilon%��'7*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:#���������~����������::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
[
?__inference_relu5_layer_call_and_return_conditional_losses_4482

inputs
identity`
ReluReluinputs*
T0*9
_output_shapes'
%:#���������~����������2
Relux
IdentityIdentityRelu:activations:0*
T0*9
_output_shapes'
%:#���������~����������2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:#���������~����������:a ]
9
_output_shapes'
%:#���������~����������
 
_user_specified_nameinputs
�
Z
>__inference_pad6_layer_call_and_return_conditional_losses_1348

inputs
identity�
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                                 2
Pad/paddings�
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������2
Pad�
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
?
#__inference_pad5_layer_call_fn_1237

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_pad5_layer_call_and_return_conditional_losses_12312
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

Z
>__inference_norm_layer_call_and_return_conditional_losses_4831

inputs
identityw
l2_normalize/SquareSquareinputs*
T0*0
_output_shapes
:����������2
l2_normalize/Square�
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"l2_normalize/Sum/reduction_indices�
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:���������*
	keep_dims(2
l2_normalize/Sumu
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+2
l2_normalize/Maximum/y�
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*/
_output_shapes
:���������2
l2_normalize/Maximum�
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*/
_output_shapes
:���������2
l2_normalize/Rsqrt~
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*0
_output_shapes
:����������2
l2_normalizem
IdentityIdentityl2_normalize:z:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
?
#__inference_norm_layer_call_fn_4852

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_norm_layer_call_and_return_conditional_losses_24282
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
input_arrayF
serving_default_input_array:0#�������������������@
fc89
StatefulPartitionedCall:0����������tensorflow/serving/predict:��
��
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer_with_weights-9
layer-19
layer-20
layer-21
layer_with_weights-10
layer-22
layer_with_weights-11
layer-23
layer-24
layer-25
layer-26
layer-27
layer_with_weights-12
layer-28
layer_with_weights-13
layer-29
layer-30
 layer-31
!layer_with_weights-14
!layer-32
"trainable_variables
#regularization_losses
$	variables
%	keras_api
&
signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"��
_tf_keras_network��{"class_name": "Functional", "name": "VGGVox", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "VGGVox", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_array"}, "name": "input_array", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "pad1", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad1", "inbound_nodes": [[["input_array", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv1", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1", "inbound_nodes": [[["pad1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn1", "inbound_nodes": [[["conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu1", "inbound_nodes": [[["bn1", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad2", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad2", "inbound_nodes": [[["relu1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2", "inbound_nodes": [[["pad2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn2", "inbound_nodes": [[["conv2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu2", "inbound_nodes": [[["bn2", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad3", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad3", "inbound_nodes": [[["relu2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv3", "trainable": true, "dtype": "float32", "filters": 384, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3", "inbound_nodes": [[["pad3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn3", "inbound_nodes": [[["conv3", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu3", "inbound_nodes": [[["bn3", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad4", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad4", "inbound_nodes": [[["relu3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv4", "inbound_nodes": [[["pad4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn4", "inbound_nodes": [[["conv4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu4", "inbound_nodes": [[["bn4", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad5", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad5", "inbound_nodes": [[["relu4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv5", "inbound_nodes": [[["pad5", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn5", "inbound_nodes": [[["conv5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu5", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu5", "inbound_nodes": [[["bn5", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad6", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "pad6", "inbound_nodes": [[["relu5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc6", "trainable": true, "dtype": "float32", "filters": 4096, "kernel_size": {"class_name": "__tuple__", "items": [9, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc6", "inbound_nodes": [[["pad6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn6", "inbound_nodes": [[["fc6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu6", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu6", "inbound_nodes": [[["bn6", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_avg_pool6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_avg_pool6", "inbound_nodes": [[["relu6", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, 4096]}}, "name": "reshape6", "inbound_nodes": [[["global_avg_pool6", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad7", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "pad7", "inbound_nodes": [[["reshape6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc7", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc7", "inbound_nodes": [[["pad7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn7", "inbound_nodes": [[["fc7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu7", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu7", "inbound_nodes": [[["bn7", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukDAAAAKQHaBGF4aXMp\nAtoBS9oMbDJfbm9ybWFsaXplKQHaAXmpAHIGAAAA+jVDOi9Vc2Vycy9MZW8vRG9jdW1lbnRzL1Zv\naWNlLXJlY29nbml0aW9uLUNOTi9tb2RlbC5wedoIPGxhbWJkYT42AAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "model", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm", "inbound_nodes": [[["relu7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc8", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc8", "inbound_nodes": [[["norm", 0, 0, {}]]]}], "input_layers": [["input_array", 0, 0]], "output_layers": [["fc8", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 512, null, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, null, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "VGGVox", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_array"}, "name": "input_array", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "pad1", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad1", "inbound_nodes": [[["input_array", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv1", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1", "inbound_nodes": [[["pad1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn1", "inbound_nodes": [[["conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu1", "inbound_nodes": [[["bn1", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad2", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad2", "inbound_nodes": [[["relu1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2", "inbound_nodes": [[["pad2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn2", "inbound_nodes": [[["conv2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu2", "inbound_nodes": [[["bn2", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad3", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad3", "inbound_nodes": [[["relu2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv3", "trainable": true, "dtype": "float32", "filters": 384, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv3", "inbound_nodes": [[["pad3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn3", "inbound_nodes": [[["conv3", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu3", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu3", "inbound_nodes": [[["bn3", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad4", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad4", "inbound_nodes": [[["relu3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv4", "inbound_nodes": [[["pad4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn4", "inbound_nodes": [[["conv4", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu4", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu4", "inbound_nodes": [[["bn4", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad5", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "name": "pad5", "inbound_nodes": [[["relu4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv5", "inbound_nodes": [[["pad5", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn5", "inbound_nodes": [[["conv5", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu5", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu5", "inbound_nodes": [[["bn5", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad6", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "pad6", "inbound_nodes": [[["relu5", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc6", "trainable": true, "dtype": "float32", "filters": 4096, "kernel_size": {"class_name": "__tuple__", "items": [9, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc6", "inbound_nodes": [[["pad6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn6", "inbound_nodes": [[["fc6", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu6", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu6", "inbound_nodes": [[["bn6", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_avg_pool6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_avg_pool6", "inbound_nodes": [[["relu6", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, 4096]}}, "name": "reshape6", "inbound_nodes": [[["global_avg_pool6", 0, 0, {}]]]}, {"class_name": "ZeroPadding2D", "config": {"name": "pad7", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "name": "pad7", "inbound_nodes": [[["reshape6", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc7", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc7", "inbound_nodes": [[["pad7", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn7", "inbound_nodes": [[["fc7", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "relu7", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "relu7", "inbound_nodes": [[["bn7", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "norm", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukDAAAAKQHaBGF4aXMp\nAtoBS9oMbDJfbm9ybWFsaXplKQHaAXmpAHIGAAAA+jVDOi9Vc2Vycy9MZW8vRG9jdW1lbnRzL1Zv\naWNlLXJlY29nbml0aW9uLUNOTi9tb2RlbC5wedoIPGxhbWJkYT42AAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "model", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "norm", "inbound_nodes": [[["relu7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "fc8", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc8", "inbound_nodes": [[["norm", 0, 0, {}]]]}], "input_layers": [["input_array", 0, 0]], "output_layers": [["fc8", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_array", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_array"}}
�
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad1", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 514, null, 1]}}
�	
1axis
	2gamma
3beta
4moving_mean
5moving_variance
6trainable_variables
7regularization_losses
8	variables
9	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 254, null, 96]}}
�
:trainable_variables
;regularization_losses
<	variables
=	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu1", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
>trainable_variables
?regularization_losses
@	variables
A	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad2", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, null, 96]}}
�	
Haxis
	Igamma
Jbeta
Kmoving_mean
Lmoving_variance
Mtrainable_variables
Nregularization_losses
O	variables
P	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, null, 256]}}
�
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu2", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
Utrainable_variables
Vregularization_losses
W	variables
X	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad3", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

Ykernel
Zbias
[trainable_variables
\regularization_losses
]	variables
^	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv3", "trainable": true, "dtype": "float32", "filters": 384, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, null, 256]}}
�	
_axis
	`gamma
abeta
bmoving_mean
cmoving_variance
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 384}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, null, 384]}}
�
htrainable_variables
iregularization_losses
j	variables
k	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu3", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad4", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	

pkernel
qbias
rtrainable_variables
sregularization_losses
t	variables
u	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv4", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 384}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, null, 384]}}
�	
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{trainable_variables
|regularization_losses
}	variables
~	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, null, 256]}}
�
trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu4", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad5", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [1, 1]}, {"class_name": "__tuple__", "items": [1, 1]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "conv5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv5", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, null, 256]}}
�	
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, null, 256]}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu5", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad6", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "fc6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc6", "trainable": true, "dtype": "float32", "filters": 4096, "kernel_size": {"class_name": "__tuple__", "items": [9, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 126, null, 256]}}
�	
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 4096}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 118, null, 4096]}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu6", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "GlobalAveragePooling2D", "name": "global_avg_pool6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_avg_pool6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Reshape", "name": "reshape6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape6", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [1, 1, 4096]}}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "ZeroPadding2D", "name": "pad7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pad7", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [0, 0]}, {"class_name": "__tuple__", "items": [0, 0]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�	
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "fc7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc7", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4096}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1, 4096]}}
�	
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "BatchNormalization", "name": "bn7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 1, "epsilon": 1e-05, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1, 1024]}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Activation", "name": "relu7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "relu7", "trainable": true, "dtype": "float32", "activation": "relu"}}
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Lambda", "name": "norm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "norm", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukDAAAAKQHaBGF4aXMp\nAtoBS9oMbDJfbm9ybWFsaXplKQHaAXmpAHIGAAAA+jVDOi9Vc2Vycy9MZW8vRG9jdW1lbnRzL1Zv\naWNlLXJlY29nbml0aW9uLUNOTi9tb2RlbC5wedoIPGxhbWJkYT42AAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "model", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
�	
�kernel
	�bias
�trainable_variables
�regularization_losses
�	variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"class_name": "Conv2D", "name": "fc8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc8", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1, 1024]}}
�
+0
,1
22
33
B4
C5
I6
J7
Y8
Z9
`10
a11
p12
q13
w14
x15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
+0
,1
22
33
44
55
B6
C7
I8
J9
K10
L11
Y12
Z13
`14
a15
b16
c17
p18
q19
w20
x21
y22
z23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
"trainable_variables
�layer_metrics
#regularization_losses
$	variables
�metrics
�non_trainable_variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
'trainable_variables
�layer_metrics
(regularization_losses
)	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
&:$`2conv1/kernel
:`2
conv1/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
-trainable_variables
�layer_metrics
.regularization_losses
/	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:`2	bn1/gamma
:`2bn1/beta
:` (2bn1/moving_mean
#:!` (2bn1/moving_variance
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
<
20
31
42
53"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
6trainable_variables
�layer_metrics
7regularization_losses
8	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
:trainable_variables
�layer_metrics
;regularization_losses
<	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
>trainable_variables
�layer_metrics
?regularization_losses
@	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
':%`�2conv2/kernel
:�2
conv2/bias
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
Dtrainable_variables
�layer_metrics
Eregularization_losses
F	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:�2	bn2/gamma
:�2bn2/beta
 :� (2bn2/moving_mean
$:"� (2bn2/moving_variance
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
I0
J1
K2
L3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
Mtrainable_variables
�layer_metrics
Nregularization_losses
O	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
Qtrainable_variables
�layer_metrics
Rregularization_losses
S	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
Utrainable_variables
�layer_metrics
Vregularization_losses
W	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&��2conv3/kernel
:�2
conv3/bias
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
[trainable_variables
�layer_metrics
\regularization_losses
]	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:�2	bn3/gamma
:�2bn3/beta
 :� (2bn3/moving_mean
$:"� (2bn3/moving_variance
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
`0
a1
b2
c3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
dtrainable_variables
�layer_metrics
eregularization_losses
f	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
htrainable_variables
�layer_metrics
iregularization_losses
j	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
ltrainable_variables
�layer_metrics
mregularization_losses
n	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&��2conv4/kernel
:�2
conv4/bias
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
rtrainable_variables
�layer_metrics
sregularization_losses
t	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:�2	bn4/gamma
:�2bn4/beta
 :� (2bn4/moving_mean
$:"� (2bn4/moving_variance
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
w0
x1
y2
z3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
{trainable_variables
�layer_metrics
|regularization_losses
}	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
(:&��2conv5/kernel
:�2
conv5/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:�2	bn5/gamma
:�2bn5/beta
 :� (2bn5/moving_mean
$:"� (2bn5/moving_variance
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
&:$	�� 2
fc6/kernel
:� 2fc6/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:� 2	bn6/gamma
:� 2bn6/beta
 :�  (2bn6/moving_mean
$:"�  (2bn6/moving_variance
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
&:$� �2
fc7/kernel
:�2fc7/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:�2	bn7/gamma
:�2bn7/beta
 :� (2bn7/moving_mean
$:"� (2bn7/moving_variance
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
&:$��2
fc8/kernel
:�2fc8/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�regularization_losses
�	variables
�metrics
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
40
51
K2
L3
b4
c5
y6
z7
�8
�9
�10
�11
�12
�13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2�
@__inference_VGGVox_layer_call_and_return_conditional_losses_3516
@__inference_VGGVox_layer_call_and_return_conditional_losses_3326
@__inference_VGGVox_layer_call_and_return_conditional_losses_2468
@__inference_VGGVox_layer_call_and_return_conditional_losses_2592�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
%__inference_VGGVox_layer_call_fn_2810
%__inference_VGGVox_layer_call_fn_3027
%__inference_VGGVox_layer_call_fn_3609
%__inference_VGGVox_layer_call_fn_3702�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
__inference__wrapped_model_756�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *<�9
7�4
input_array#�������������������
�2�
=__inference_pad1_layer_call_and_return_conditional_losses_763�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
"__inference_pad1_layer_call_fn_769�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
?__inference_conv1_layer_call_and_return_conditional_losses_3712�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_conv1_layer_call_fn_3721�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn1_layer_call_and_return_conditional_losses_3823
=__inference_bn1_layer_call_and_return_conditional_losses_3805
=__inference_bn1_layer_call_and_return_conditional_losses_3759
=__inference_bn1_layer_call_and_return_conditional_losses_3741�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn1_layer_call_fn_3785
"__inference_bn1_layer_call_fn_3849
"__inference_bn1_layer_call_fn_3836
"__inference_bn1_layer_call_fn_3772�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu1_layer_call_and_return_conditional_losses_3854�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu1_layer_call_fn_3859�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_pad2_layer_call_and_return_conditional_losses_880�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
"__inference_pad2_layer_call_fn_886�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
?__inference_conv2_layer_call_and_return_conditional_losses_3869�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_conv2_layer_call_fn_3878�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn2_layer_call_and_return_conditional_losses_3898
=__inference_bn2_layer_call_and_return_conditional_losses_3962
=__inference_bn2_layer_call_and_return_conditional_losses_3980
=__inference_bn2_layer_call_and_return_conditional_losses_3916�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn2_layer_call_fn_4006
"__inference_bn2_layer_call_fn_3993
"__inference_bn2_layer_call_fn_3942
"__inference_bn2_layer_call_fn_3929�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu2_layer_call_and_return_conditional_losses_4011�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu2_layer_call_fn_4016�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_pad3_layer_call_and_return_conditional_losses_997�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
#__inference_pad3_layer_call_fn_1003�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
?__inference_conv3_layer_call_and_return_conditional_losses_4026�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_conv3_layer_call_fn_4035�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn3_layer_call_and_return_conditional_losses_4073
=__inference_bn3_layer_call_and_return_conditional_losses_4055
=__inference_bn3_layer_call_and_return_conditional_losses_4119
=__inference_bn3_layer_call_and_return_conditional_losses_4137�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn3_layer_call_fn_4099
"__inference_bn3_layer_call_fn_4150
"__inference_bn3_layer_call_fn_4086
"__inference_bn3_layer_call_fn_4163�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu3_layer_call_and_return_conditional_losses_4168�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu3_layer_call_fn_4173�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_pad4_layer_call_and_return_conditional_losses_1114�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
#__inference_pad4_layer_call_fn_1120�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
?__inference_conv4_layer_call_and_return_conditional_losses_4183�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_conv4_layer_call_fn_4192�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn4_layer_call_and_return_conditional_losses_4230
=__inference_bn4_layer_call_and_return_conditional_losses_4294
=__inference_bn4_layer_call_and_return_conditional_losses_4276
=__inference_bn4_layer_call_and_return_conditional_losses_4212�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn4_layer_call_fn_4307
"__inference_bn4_layer_call_fn_4243
"__inference_bn4_layer_call_fn_4320
"__inference_bn4_layer_call_fn_4256�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu4_layer_call_and_return_conditional_losses_4325�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu4_layer_call_fn_4330�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_pad5_layer_call_and_return_conditional_losses_1231�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
#__inference_pad5_layer_call_fn_1237�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
?__inference_conv5_layer_call_and_return_conditional_losses_4340�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_conv5_layer_call_fn_4349�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn5_layer_call_and_return_conditional_losses_4451
=__inference_bn5_layer_call_and_return_conditional_losses_4369
=__inference_bn5_layer_call_and_return_conditional_losses_4387
=__inference_bn5_layer_call_and_return_conditional_losses_4433�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn5_layer_call_fn_4400
"__inference_bn5_layer_call_fn_4464
"__inference_bn5_layer_call_fn_4413
"__inference_bn5_layer_call_fn_4477�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu5_layer_call_and_return_conditional_losses_4482�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu5_layer_call_fn_4487�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_pad6_layer_call_and_return_conditional_losses_1348�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
#__inference_pad6_layer_call_fn_1354�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
=__inference_fc6_layer_call_and_return_conditional_losses_4497�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_fc6_layer_call_fn_4506�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn6_layer_call_and_return_conditional_losses_4544
=__inference_bn6_layer_call_and_return_conditional_losses_4590
=__inference_bn6_layer_call_and_return_conditional_losses_4608
=__inference_bn6_layer_call_and_return_conditional_losses_4526�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn6_layer_call_fn_4570
"__inference_bn6_layer_call_fn_4634
"__inference_bn6_layer_call_fn_4557
"__inference_bn6_layer_call_fn_4621�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu6_layer_call_and_return_conditional_losses_4639�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu6_layer_call_fn_4644�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_1465�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
/__inference_global_avg_pool6_layer_call_fn_1471�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
B__inference_reshape6_layer_call_and_return_conditional_losses_4658�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_reshape6_layer_call_fn_4663�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_pad7_layer_call_and_return_conditional_losses_1478�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
#__inference_pad7_layer_call_fn_1484�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
=__inference_fc7_layer_call_and_return_conditional_losses_4673�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_fc7_layer_call_fn_4682�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
=__inference_bn7_layer_call_and_return_conditional_losses_4720
=__inference_bn7_layer_call_and_return_conditional_losses_4766
=__inference_bn7_layer_call_and_return_conditional_losses_4784
=__inference_bn7_layer_call_and_return_conditional_losses_4702�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference_bn7_layer_call_fn_4746
"__inference_bn7_layer_call_fn_4797
"__inference_bn7_layer_call_fn_4733
"__inference_bn7_layer_call_fn_4810�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
?__inference_relu7_layer_call_and_return_conditional_losses_4815�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_relu7_layer_call_fn_4820�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
>__inference_norm_layer_call_and_return_conditional_losses_4831
>__inference_norm_layer_call_and_return_conditional_losses_4842�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
#__inference_norm_layer_call_fn_4852
#__inference_norm_layer_call_fn_4847�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
=__inference_fc8_layer_call_and_return_conditional_losses_4862�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_fc8_layer_call_fn_4871�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_3122input_array"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
@__inference_VGGVox_layer_call_and_return_conditional_losses_2468�@+,2345BCIJKLYZ`abcpqwxyz��������������������N�K
D�A
7�4
input_array#�������������������
p

 
� ".�+
$�!
0����������
� �
@__inference_VGGVox_layer_call_and_return_conditional_losses_2592�@+,2345BCIJKLYZ`abcpqwxyz��������������������N�K
D�A
7�4
input_array#�������������������
p 

 
� ".�+
$�!
0����������
� �
@__inference_VGGVox_layer_call_and_return_conditional_losses_3326�@+,2345BCIJKLYZ`abcpqwxyz��������������������I�F
?�<
2�/
inputs#�������������������
p

 
� ".�+
$�!
0����������
� �
@__inference_VGGVox_layer_call_and_return_conditional_losses_3516�@+,2345BCIJKLYZ`abcpqwxyz��������������������I�F
?�<
2�/
inputs#�������������������
p 

 
� ".�+
$�!
0����������
� �
%__inference_VGGVox_layer_call_fn_2810�@+,2345BCIJKLYZ`abcpqwxyz��������������������N�K
D�A
7�4
input_array#�������������������
p

 
� "!������������
%__inference_VGGVox_layer_call_fn_3027�@+,2345BCIJKLYZ`abcpqwxyz��������������������N�K
D�A
7�4
input_array#�������������������
p 

 
� "!������������
%__inference_VGGVox_layer_call_fn_3609�@+,2345BCIJKLYZ`abcpqwxyz��������������������I�F
?�<
2�/
inputs#�������������������
p

 
� "!������������
%__inference_VGGVox_layer_call_fn_3702�@+,2345BCIJKLYZ`abcpqwxyz��������������������I�F
?�<
2�/
inputs#�������������������
p 

 
� "!������������
__inference__wrapped_model_756�@+,2345BCIJKLYZ`abcpqwxyz��������������������F�C
<�9
7�4
input_array#�������������������
� "2�/
-
fc8&�#
fc8�����������
=__inference_bn1_layer_call_and_return_conditional_losses_3741�2345M�J
C�@
:�7
inputs+���������������������������`
p
� "?�<
5�2
0+���������������������������`
� �
=__inference_bn1_layer_call_and_return_conditional_losses_3759�2345M�J
C�@
:�7
inputs+���������������������������`
p 
� "?�<
5�2
0+���������������������������`
� �
=__inference_bn1_layer_call_and_return_conditional_losses_3805�2345E�B
;�8
2�/
inputs#�������������������`
p
� "7�4
-�*
0#�������������������`
� �
=__inference_bn1_layer_call_and_return_conditional_losses_3823�2345E�B
;�8
2�/
inputs#�������������������`
p 
� "7�4
-�*
0#�������������������`
� �
"__inference_bn1_layer_call_fn_3772�2345M�J
C�@
:�7
inputs+���������������������������`
p
� "2�/+���������������������������`�
"__inference_bn1_layer_call_fn_3785�2345M�J
C�@
:�7
inputs+���������������������������`
p 
� "2�/+���������������������������`�
"__inference_bn1_layer_call_fn_3836y2345E�B
;�8
2�/
inputs#�������������������`
p
� "*�'#�������������������`�
"__inference_bn1_layer_call_fn_3849y2345E�B
;�8
2�/
inputs#�������������������`
p 
� "*�'#�������������������`�
=__inference_bn2_layer_call_and_return_conditional_losses_3898�IJKLN�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
=__inference_bn2_layer_call_and_return_conditional_losses_3916�IJKLN�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
=__inference_bn2_layer_call_and_return_conditional_losses_3962�IJKLE�B
;�8
2�/
inputs#���������~����������
p
� "7�4
-�*
0#���������~����������
� �
=__inference_bn2_layer_call_and_return_conditional_losses_3980�IJKLE�B
;�8
2�/
inputs#���������~����������
p 
� "7�4
-�*
0#���������~����������
� �
"__inference_bn2_layer_call_fn_3929�IJKLN�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
"__inference_bn2_layer_call_fn_3942�IJKLN�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
"__inference_bn2_layer_call_fn_3993yIJKLE�B
;�8
2�/
inputs#���������~����������
p
� "*�'#���������~�����������
"__inference_bn2_layer_call_fn_4006yIJKLE�B
;�8
2�/
inputs#���������~����������
p 
� "*�'#���������~�����������
=__inference_bn3_layer_call_and_return_conditional_losses_4055�`abcN�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
=__inference_bn3_layer_call_and_return_conditional_losses_4073�`abcN�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
=__inference_bn3_layer_call_and_return_conditional_losses_4119�`abcE�B
;�8
2�/
inputs#���������~����������
p
� "7�4
-�*
0#���������~����������
� �
=__inference_bn3_layer_call_and_return_conditional_losses_4137�`abcE�B
;�8
2�/
inputs#���������~����������
p 
� "7�4
-�*
0#���������~����������
� �
"__inference_bn3_layer_call_fn_4086�`abcN�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
"__inference_bn3_layer_call_fn_4099�`abcN�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
"__inference_bn3_layer_call_fn_4150y`abcE�B
;�8
2�/
inputs#���������~����������
p
� "*�'#���������~�����������
"__inference_bn3_layer_call_fn_4163y`abcE�B
;�8
2�/
inputs#���������~����������
p 
� "*�'#���������~�����������
=__inference_bn4_layer_call_and_return_conditional_losses_4212�wxyzE�B
;�8
2�/
inputs#���������~����������
p
� "7�4
-�*
0#���������~����������
� �
=__inference_bn4_layer_call_and_return_conditional_losses_4230�wxyzE�B
;�8
2�/
inputs#���������~����������
p 
� "7�4
-�*
0#���������~����������
� �
=__inference_bn4_layer_call_and_return_conditional_losses_4276�wxyzN�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
=__inference_bn4_layer_call_and_return_conditional_losses_4294�wxyzN�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
"__inference_bn4_layer_call_fn_4243ywxyzE�B
;�8
2�/
inputs#���������~����������
p
� "*�'#���������~�����������
"__inference_bn4_layer_call_fn_4256ywxyzE�B
;�8
2�/
inputs#���������~����������
p 
� "*�'#���������~�����������
"__inference_bn4_layer_call_fn_4307�wxyzN�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
"__inference_bn4_layer_call_fn_4320�wxyzN�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
=__inference_bn5_layer_call_and_return_conditional_losses_4369�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
=__inference_bn5_layer_call_and_return_conditional_losses_4387�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
=__inference_bn5_layer_call_and_return_conditional_losses_4433�����E�B
;�8
2�/
inputs#���������~����������
p
� "7�4
-�*
0#���������~����������
� �
=__inference_bn5_layer_call_and_return_conditional_losses_4451�����E�B
;�8
2�/
inputs#���������~����������
p 
� "7�4
-�*
0#���������~����������
� �
"__inference_bn5_layer_call_fn_4400�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
"__inference_bn5_layer_call_fn_4413�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
"__inference_bn5_layer_call_fn_4464}����E�B
;�8
2�/
inputs#���������~����������
p
� "*�'#���������~�����������
"__inference_bn5_layer_call_fn_4477}����E�B
;�8
2�/
inputs#���������~����������
p 
� "*�'#���������~�����������
=__inference_bn6_layer_call_and_return_conditional_losses_4526�����N�K
D�A
;�8
inputs,���������������������������� 
p
� "@�=
6�3
0,���������������������������� 
� �
=__inference_bn6_layer_call_and_return_conditional_losses_4544�����N�K
D�A
;�8
inputs,���������������������������� 
p 
� "@�=
6�3
0,���������������������������� 
� �
=__inference_bn6_layer_call_and_return_conditional_losses_4590�����E�B
;�8
2�/
inputs#���������v���������� 
p
� "7�4
-�*
0#���������v���������� 
� �
=__inference_bn6_layer_call_and_return_conditional_losses_4608�����E�B
;�8
2�/
inputs#���������v���������� 
p 
� "7�4
-�*
0#���������v���������� 
� �
"__inference_bn6_layer_call_fn_4557�����N�K
D�A
;�8
inputs,���������������������������� 
p
� "3�0,���������������������������� �
"__inference_bn6_layer_call_fn_4570�����N�K
D�A
;�8
inputs,���������������������������� 
p 
� "3�0,���������������������������� �
"__inference_bn6_layer_call_fn_4621}����E�B
;�8
2�/
inputs#���������v���������� 
p
� "*�'#���������v���������� �
"__inference_bn6_layer_call_fn_4634}����E�B
;�8
2�/
inputs#���������v���������� 
p 
� "*�'#���������v���������� �
=__inference_bn7_layer_call_and_return_conditional_losses_4702�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
=__inference_bn7_layer_call_and_return_conditional_losses_4720�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
=__inference_bn7_layer_call_and_return_conditional_losses_4766x����<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
=__inference_bn7_layer_call_and_return_conditional_losses_4784x����<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
"__inference_bn7_layer_call_fn_4733�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
"__inference_bn7_layer_call_fn_4746�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
"__inference_bn7_layer_call_fn_4797k����<�9
2�/
)�&
inputs����������
p
� "!������������
"__inference_bn7_layer_call_fn_4810k����<�9
2�/
)�&
inputs����������
p 
� "!������������
?__inference_conv1_layer_call_and_return_conditional_losses_3712�+,A�>
7�4
2�/
inputs#�������������������
� "7�4
-�*
0#�������������������`
� �
$__inference_conv1_layer_call_fn_3721s+,A�>
7�4
2�/
inputs#�������������������
� "*�'#�������������������`�
?__inference_conv2_layer_call_and_return_conditional_losses_3869�BCA�>
7�4
2�/
inputs#�������������������`
� "7�4
-�*
0#���������~����������
� �
$__inference_conv2_layer_call_fn_3878sBCA�>
7�4
2�/
inputs#�������������������`
� "*�'#���������~�����������
?__inference_conv3_layer_call_and_return_conditional_losses_4026�YZB�?
8�5
3�0
inputs$��������������������
� "7�4
-�*
0#���������~����������
� �
$__inference_conv3_layer_call_fn_4035tYZB�?
8�5
3�0
inputs$��������������������
� "*�'#���������~�����������
?__inference_conv4_layer_call_and_return_conditional_losses_4183�pqB�?
8�5
3�0
inputs$��������������������
� "7�4
-�*
0#���������~����������
� �
$__inference_conv4_layer_call_fn_4192tpqB�?
8�5
3�0
inputs$��������������������
� "*�'#���������~�����������
?__inference_conv5_layer_call_and_return_conditional_losses_4340���B�?
8�5
3�0
inputs$��������������������
� "7�4
-�*
0#���������~����������
� �
$__inference_conv5_layer_call_fn_4349v��B�?
8�5
3�0
inputs$��������������������
� "*�'#���������~�����������
=__inference_fc6_layer_call_and_return_conditional_losses_4497���A�>
7�4
2�/
inputs#���������~����������
� "7�4
-�*
0#���������v���������� 
� �
"__inference_fc6_layer_call_fn_4506u��A�>
7�4
2�/
inputs#���������~����������
� "*�'#���������v���������� �
=__inference_fc7_layer_call_and_return_conditional_losses_4673p��8�5
.�+
)�&
inputs���������� 
� ".�+
$�!
0����������
� �
"__inference_fc7_layer_call_fn_4682c��8�5
.�+
)�&
inputs���������� 
� "!������������
=__inference_fc8_layer_call_and_return_conditional_losses_4862p��8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
"__inference_fc8_layer_call_fn_4871c��8�5
.�+
)�&
inputs����������
� "!������������
J__inference_global_avg_pool6_layer_call_and_return_conditional_losses_1465�R�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0������������������
� �
/__inference_global_avg_pool6_layer_call_fn_1471wR�O
H�E
C�@
inputs4������������������������������������
� "!��������������������
>__inference_norm_layer_call_and_return_conditional_losses_4831r@�=
6�3
)�&
inputs����������

 
p
� ".�+
$�!
0����������
� �
>__inference_norm_layer_call_and_return_conditional_losses_4842r@�=
6�3
)�&
inputs����������

 
p 
� ".�+
$�!
0����������
� �
#__inference_norm_layer_call_fn_4847e@�=
6�3
)�&
inputs����������

 
p
� "!������������
#__inference_norm_layer_call_fn_4852e@�=
6�3
)�&
inputs����������

 
p 
� "!������������
=__inference_pad1_layer_call_and_return_conditional_losses_763�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
"__inference_pad1_layer_call_fn_769�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
=__inference_pad2_layer_call_and_return_conditional_losses_880�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
"__inference_pad2_layer_call_fn_886�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
=__inference_pad3_layer_call_and_return_conditional_losses_997�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
#__inference_pad3_layer_call_fn_1003�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
>__inference_pad4_layer_call_and_return_conditional_losses_1114�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
#__inference_pad4_layer_call_fn_1120�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
>__inference_pad5_layer_call_and_return_conditional_losses_1231�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
#__inference_pad5_layer_call_fn_1237�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
>__inference_pad6_layer_call_and_return_conditional_losses_1348�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
#__inference_pad6_layer_call_fn_1354�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
>__inference_pad7_layer_call_and_return_conditional_losses_1478�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
#__inference_pad7_layer_call_fn_1484�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
?__inference_relu1_layer_call_and_return_conditional_losses_3854|A�>
7�4
2�/
inputs#�������������������`
� "7�4
-�*
0#�������������������`
� �
$__inference_relu1_layer_call_fn_3859oA�>
7�4
2�/
inputs#�������������������`
� "*�'#�������������������`�
?__inference_relu2_layer_call_and_return_conditional_losses_4011|A�>
7�4
2�/
inputs#���������~����������
� "7�4
-�*
0#���������~����������
� �
$__inference_relu2_layer_call_fn_4016oA�>
7�4
2�/
inputs#���������~����������
� "*�'#���������~�����������
?__inference_relu3_layer_call_and_return_conditional_losses_4168|A�>
7�4
2�/
inputs#���������~����������
� "7�4
-�*
0#���������~����������
� �
$__inference_relu3_layer_call_fn_4173oA�>
7�4
2�/
inputs#���������~����������
� "*�'#���������~�����������
?__inference_relu4_layer_call_and_return_conditional_losses_4325|A�>
7�4
2�/
inputs#���������~����������
� "7�4
-�*
0#���������~����������
� �
$__inference_relu4_layer_call_fn_4330oA�>
7�4
2�/
inputs#���������~����������
� "*�'#���������~�����������
?__inference_relu5_layer_call_and_return_conditional_losses_4482|A�>
7�4
2�/
inputs#���������~����������
� "7�4
-�*
0#���������~����������
� �
$__inference_relu5_layer_call_fn_4487oA�>
7�4
2�/
inputs#���������~����������
� "*�'#���������~�����������
?__inference_relu6_layer_call_and_return_conditional_losses_4639|A�>
7�4
2�/
inputs#���������v���������� 
� "7�4
-�*
0#���������v���������� 
� �
$__inference_relu6_layer_call_fn_4644oA�>
7�4
2�/
inputs#���������v���������� 
� "*�'#���������v���������� �
?__inference_relu7_layer_call_and_return_conditional_losses_4815j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
$__inference_relu7_layer_call_fn_4820]8�5
.�+
)�&
inputs����������
� "!������������
B__inference_reshape6_layer_call_and_return_conditional_losses_4658b0�-
&�#
!�
inputs���������� 
� ".�+
$�!
0���������� 
� �
'__inference_reshape6_layer_call_fn_4663U0�-
&�#
!�
inputs���������� 
� "!����������� �
"__inference_signature_wrapper_3122�@+,2345BCIJKLYZ`abcpqwxyz��������������������U�R
� 
K�H
F
input_array7�4
input_array#�������������������"2�/
-
fc8&�#
fc8����������