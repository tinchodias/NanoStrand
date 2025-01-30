actions-raw
nnDevice: descriptor with: otherDescriptor 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_device(int descriptor, int otherDescriptor) ) module: #nanomsg