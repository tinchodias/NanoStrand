actions
device: descriptor with: otherDescriptor

	| ret |
	ret := self deviceS1: descriptor s2: otherDescriptor.
	^ self isValid: ret