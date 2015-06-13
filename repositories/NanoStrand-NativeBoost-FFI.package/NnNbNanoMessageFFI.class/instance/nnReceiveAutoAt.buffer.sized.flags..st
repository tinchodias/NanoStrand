actions-raw
nnReceiveAutoAt: descriptor buffer: buffer sized: bufferSize flags: flags
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_recv(int descriptor,  NBExternalAddress* buffer, NBSizeT bufferSize, int flags) ) module: #nanomsg