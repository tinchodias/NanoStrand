actions
receiveWithFlags: flags at: descriptor

	| bufferPtr ret newData |
	bufferPtr := self prepareBufferHandle.
	ret := self
		       receiveTo: bufferPtr
		       sized: NN_MSG
		       flags: flags
		       at: descriptor.
	ret = -1 ifTrue: [ ^ nil ].
	newData := ByteArray new: ret.
	LibC memCopy: bufferPtr to: newData size: ret.
	self freeMessage: bufferPtr.
	^ newData