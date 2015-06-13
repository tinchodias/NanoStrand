actions
getSocketOptionAt: descriptor level: level option: option
	| intSz ret valPtr sizeHolder |
	intSz := self class intSize.
	valPtr := (ByteArray new: intSz).
	sizeHolder := self class newSizeHolder: intSz.
	ret := self nnGetSocketOptionAt: descriptor level: level option: option value: valPtr size: sizeHolder.
	ret = -1 ifTrue: [^nil].
	^ valPtr nbInt32AtOffset: 0
	
