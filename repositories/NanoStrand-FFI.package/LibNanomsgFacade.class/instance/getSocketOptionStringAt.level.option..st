actions
getSocketOptionStringAt: descriptor level: level option: option

	| maxStringSize ret valPtr sizeHolder |
	maxStringSize := 128.
	valPtr := ByteArray new: maxStringSize.
	sizeHolder := self class newSizeHolder: maxStringSize.
	ret := self
		       getSockOptS: descriptor
		       level: level
		       option: option
		       val: valPtr
		       len: sizeHolder.
	ret = -1 ifTrue: [ ^ nil ].
	^ valPtr asString copyFrom: 1 to: sizeHolder value