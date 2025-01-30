actions
getSocketOptionStringAt: descriptor level: level option: option
	|  maxStringSize ret valPtr sizeHolder |
	maxStringSize := 128.
	valPtr := ByteArray new: maxStringSize.
	sizeHolder := self class newSizeHolder: maxStringSize.
	ret := self nnGetSocketOptionAt: descriptor level: level option: option value: valPtr size: sizeHolder.
	ret = -1 ifTrue: [^nil].
	^ valPtr asString copyFrom: 1 to: sizeHolder value