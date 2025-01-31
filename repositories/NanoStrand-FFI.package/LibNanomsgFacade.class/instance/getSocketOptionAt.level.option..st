actions
getSocketOptionAt: descriptor level: level option: option

	| intSz ret valPtr sizeHolder |
	intSz := self class intSize.
	valPtr := ByteArray new: intSz.
	sizeHolder := self class newSizeHolder: intSz.
	ret := self
		       getSockOptS: descriptor
		       level: level
		       option: option
		       val: valPtr
		       len: sizeHolder.
	ret = -1 ifTrue: [ ^ nil ].
	^ valPtr int32AtOffset: 0