actions
setSocketOptionAt: descriptor level: level option: option valueString: valPtr size: valSize

	| ret |
	ret := self
		       setSockOptS: descriptor
		       level: level
		       option: option
		       optval: valPtr
		       optvallen: valSize.
	^ self isValid: ret