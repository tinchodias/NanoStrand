instance creation
forCheckSend: nnSocket
	| inst |
	inst := self new.
	inst fd: nnSocket descriptor.
	inst events: self nnPollOut.
	^inst