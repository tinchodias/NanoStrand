testing
canReceive
	^(self revents bitAnd: self class nnPollIn) > 0