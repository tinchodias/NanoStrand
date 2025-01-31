actions
closeSocketAt: descriptor

	| ret |
	ret := self close: descriptor.
	^ self isValid: ret