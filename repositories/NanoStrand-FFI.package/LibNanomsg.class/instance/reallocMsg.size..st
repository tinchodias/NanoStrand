public
reallocMsg: msg size: size

	^ self ffiCall: #(void* nn_reallocmsg(void* msg, size_t size))