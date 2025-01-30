actions-raw
nnSocket: domain protocol: protocol
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_socket(int domain, int protocol) ) module: #nanomsg