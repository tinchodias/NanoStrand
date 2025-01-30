public
recvS: s buf: buf len: len flags: flags

	^ self ffiCall: #(int nn_recv(int s, void* buf, size_t len, int flags))