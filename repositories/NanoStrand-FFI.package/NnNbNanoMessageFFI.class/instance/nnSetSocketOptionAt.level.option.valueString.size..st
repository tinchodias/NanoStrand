actions-raw
nnSetSocketOptionAt: descriptor level: level option: option valueString: valStr size: valStrSize
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_setsockopt(int descriptor, int level, int option, String valStr, size_t valStrSize) ) module: #nanomsg