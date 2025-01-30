public
bindS: s addr: addr

	^ self ffiCall: #(int nn_bind(int s, const char* addr))