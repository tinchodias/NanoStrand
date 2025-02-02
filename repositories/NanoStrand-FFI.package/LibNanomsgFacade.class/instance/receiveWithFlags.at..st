actions
receiveWithFlags: flags at: descriptor

	| bufferPtr byteSize newData |
	bufferPtr := ExternalAddress newPointer.
	byteSize := self
		       receiveTo: bufferPtr
		       sized: NN_MSG
		       flags: flags
		       at: descriptor.
	byteSize = -1 ifTrue: [ ^ nil ].
	newData := ByteArray new: byteSize.
	LibC memCopy: bufferPtr to: newData size: byteSize.

"	self freeMessage: bufferPtr."
	^ newData