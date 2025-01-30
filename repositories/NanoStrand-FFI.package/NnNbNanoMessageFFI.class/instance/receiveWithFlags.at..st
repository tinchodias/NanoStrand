actions
receiveWithFlags: flags at: descriptor
	| bufferPtr ret newData |
	bufferPtr := self prepareBufferHandle.
	ret := self nnReceiveAutoAt: descriptor buffer: bufferPtr sized: self nnMsgFlag flags: flags.
	ret = -1 ifTrue: [^nil].
	newData := ByteArray new: ret.
	LibC memCopy: bufferPtr to: newData size: ret.
	self freeMessage: bufferPtr.
	^newData