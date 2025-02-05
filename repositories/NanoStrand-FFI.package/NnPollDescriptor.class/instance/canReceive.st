testing
canReceive

	^ (self revents bitAnd: NN_POLLIN) > 0