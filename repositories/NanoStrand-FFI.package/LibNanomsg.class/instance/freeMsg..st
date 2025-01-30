public
freeMsg: msg

	^ self ffiCall: #(int nn_freemsg(void* msg))