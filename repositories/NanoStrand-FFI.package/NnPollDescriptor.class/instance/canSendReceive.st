testing
canSendReceive

	^ (self revents bitAnd: (NN_POLLIN bitOr: NN_POLLOUT)) > 0