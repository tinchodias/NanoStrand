private
preparePollDescriptorArrayFrom: nnSockets

	| validSockets pfds |
	validSockets := nnSockets select: [ :each | each isValid ].
	pfds := (FFIArray ofType: NnPollDescriptor size: validSockets size) new.
	validSockets withIndexDo: [ :each :idx |
		pfds at: idx put: each pollDescriptor ].
	pollDescriptorArray := pfds