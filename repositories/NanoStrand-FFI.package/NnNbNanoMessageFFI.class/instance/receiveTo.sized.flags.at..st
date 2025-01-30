actions
receiveTo: buffer sized: bufferSize flags: flags at: descriptor
	| ret |
	ret := self nnReceiveAt: descriptor buffer: buffer sized: bufferSize flags: flags.
	^ret