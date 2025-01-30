actions-raw
nnGetErrorNumber
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int #errno() ) module: #nanomsg