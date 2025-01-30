public
getSockOptS: s level: level option: option val: optval len: optvallen

	^ self ffiCall: #(int nn_getsockopt(int s, int level, int option, void* optval, size_t* optvallen))