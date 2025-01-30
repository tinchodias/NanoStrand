public
strerror: errnum

	^ self ffiCall: #(const char* nn_strerror(int errnum))