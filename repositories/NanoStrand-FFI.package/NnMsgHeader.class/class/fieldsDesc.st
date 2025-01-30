field definition
fieldsDesc

	^ #(
	nn_iovec* msg_iov;
	int msg_iovlen;
	void* msg_control;
	size_t msg_controllen
	)