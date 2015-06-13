initialize-release
close
	| result |
	self isValid ifFalse: [^false].
	(result := ffi closeSocketAt: descriptor) ifTrue: [self resetOnClose].
	^result