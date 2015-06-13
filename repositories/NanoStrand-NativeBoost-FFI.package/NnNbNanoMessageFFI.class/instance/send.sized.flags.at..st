actions
send: buffer sized: bufferSize flags: flags at: descriptor
	| ret |
	ret := self nnSendAt: descriptor buffer: buffer sized: bufferSize flags: flags.
	^ret