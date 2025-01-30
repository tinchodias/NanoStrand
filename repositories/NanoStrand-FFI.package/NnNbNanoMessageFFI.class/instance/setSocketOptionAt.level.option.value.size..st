actions
setSocketOptionAt: descriptor level: level option: option value: valPtr size: valSize
	| ret |
	ret := self nnSetSocketOptionAt: descriptor level: level option: option value: valPtr size: valSize.
	^self isValid: ret