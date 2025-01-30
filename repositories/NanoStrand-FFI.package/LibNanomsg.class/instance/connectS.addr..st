public
connectS: s addr: addr

	^ self ffiCall: #(int nn_connect(int s, const char* addr))