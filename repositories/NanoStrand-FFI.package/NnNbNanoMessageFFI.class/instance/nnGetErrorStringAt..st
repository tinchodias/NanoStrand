actions-raw
nnGetErrorStringAt: errnum
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( String nn_strerror(int errnum) ) module: #nanomsg