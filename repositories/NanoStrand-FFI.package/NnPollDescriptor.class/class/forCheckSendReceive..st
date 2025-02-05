instance creation
forCheckSendReceive: nnSocket

	| inst |
	inst := self new.
	inst fd: nnSocket descriptor.
	inst events: NN_POLLIN + NN_POLLOUT.
	^ inst