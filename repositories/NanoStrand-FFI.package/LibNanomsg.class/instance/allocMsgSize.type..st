public
allocMsgSize: size type: type

	^ self ffiCall: #(void* nn_allocmsg(size_t size, int type))