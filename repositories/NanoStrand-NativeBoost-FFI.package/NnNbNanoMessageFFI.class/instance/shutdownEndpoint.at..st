actions
shutdownEndpoint: endpointId at: descriptor
	| ret |
	ret := self nnShutdownAt: descriptor endpoint: endpointId.
	^self isValid: ret