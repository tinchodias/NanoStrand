actions-raw
nnPoll: pollDescriptors numberOfDesc: nfds timeout: timeoutMsecs 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( int nn_poll(NBExternalAddress pollDescriptors, int nfds, int timeoutMsecs) ) module: #nanomsg