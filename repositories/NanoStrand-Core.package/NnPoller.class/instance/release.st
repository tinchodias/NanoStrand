initialization-release
release
	self isRunning ifTrue: [self stop].
	pollDescriptorArray ifNotNil: [pollDescriptorArray free]