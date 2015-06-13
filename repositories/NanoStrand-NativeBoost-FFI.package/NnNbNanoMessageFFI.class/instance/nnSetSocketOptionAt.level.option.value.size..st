actions-raw
nnSetSocketOptionAt: descriptor level: level option: option value: valPtr size: valSize
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_setsockopt(int descriptor, int level, int option, void * valPtr, size_t valSize) ) module: #nanomsg