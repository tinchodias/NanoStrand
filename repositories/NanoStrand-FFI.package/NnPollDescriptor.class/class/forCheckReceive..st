instance creation
forCheckReceive: nnSocket 
	| inst |
	inst := self new.
	inst fd: nnSocket descriptor.
	inst events: self nnPollIn.
	^inst 