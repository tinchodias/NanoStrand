public
setSockOptS: s level: level option: option optval: optval optvallen: optvallen

	^ self ffiCall: #(int nn_setsockopt(int s, int level, int option, const void* optval, size_t optvallen))