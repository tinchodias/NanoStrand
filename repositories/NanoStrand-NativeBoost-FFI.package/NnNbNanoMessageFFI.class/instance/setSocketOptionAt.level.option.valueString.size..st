actions
setSocketOptionAt: descriptor level: level option: option valueString: valPtr size: valSize
	| ret |
	ret := self nnSetSocketOptionAt: descriptor level: level option: option valueString: valPtr size: valSize.
	^self isValid: ret