actions-raw
nnGetErrorNumber
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_errno() ) module: #nanomsg