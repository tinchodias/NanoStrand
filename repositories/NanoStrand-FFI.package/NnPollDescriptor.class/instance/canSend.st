testing
canSend

	^ (self revents bitAnd: NN_POLLOUT) > 0