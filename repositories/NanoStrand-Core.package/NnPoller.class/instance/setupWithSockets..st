actions
setupWithSockets: nnSockets
	self isRunning ifTrue: [self stop].
	nnSockets do: [:each | self sockets at: each descriptor put: each].
	self preparePollDescriptorArrayFrom: nnSockets.
	shouldPoll := true.
	