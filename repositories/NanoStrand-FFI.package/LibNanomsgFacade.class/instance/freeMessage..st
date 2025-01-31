actions
freeMessage: msgPointer

	| ret |
	ret := self freeMsg: msgPointer.
	^ self isValid: ret