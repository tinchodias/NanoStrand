private
preparePollDescriptorArrayFrom: nnSockets
	| validSockets pfds |
	validSockets := nnSockets select: [:each | each isValid].
	pfds := self newPollDescriptorArraySized: validSockets size.
	1 to: validSockets size do: [:idx |
		pfds at: idx put: (validSockets at: idx) pollDescriptor.
	].
	 pollDescriptorArray := pfds.