actions
device: descriptor with: otherDescriptor 
	| ret |
	ret := self nnDevice: descriptor with: otherDescriptor.
	^self isValid: ret
	