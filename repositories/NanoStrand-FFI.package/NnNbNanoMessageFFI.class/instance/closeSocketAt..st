actions
closeSocketAt: descriptor
	| ret |
	ret := self nnCloseSocketAt: descriptor.
	^self isValid: ret