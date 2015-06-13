accessing
receiveProcessPriority
	^ receiveProcessPriority ifNil: [receiveProcessPriority := self settings defaultReceiveProcessPriority]