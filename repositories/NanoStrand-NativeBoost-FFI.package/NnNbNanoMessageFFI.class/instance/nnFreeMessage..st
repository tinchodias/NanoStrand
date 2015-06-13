actions-raw
nnFreeMessage: msgPointer 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_freemsg(NBExternalAddress msgPointer) ) module: #nanomsg