actions-raw
nnCloseSocketAt: descriptor
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_close(int descriptor) ) module: #nanomsg