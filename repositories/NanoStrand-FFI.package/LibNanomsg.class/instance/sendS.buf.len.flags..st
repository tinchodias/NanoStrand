public
sendS: s buf: buf len: len flags: flags

	^ self ffiCall: #(int nn_send(int s, const void* buf, size_t len, int flags))