testing
canSendReceive
	^(self revents bitAnd: (self class nnPollIn bitOr: self class nnPollOut)) > 0