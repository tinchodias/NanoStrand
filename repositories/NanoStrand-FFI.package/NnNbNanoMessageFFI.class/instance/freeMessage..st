actions
freeMessage: msgPointer
	| ret |
	ret := self nnFreeMessage: msgPointer.
	^self isValid: ret