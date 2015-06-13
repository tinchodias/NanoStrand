actions-raw
nnTerminate
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_term() ) module: #nanomsg