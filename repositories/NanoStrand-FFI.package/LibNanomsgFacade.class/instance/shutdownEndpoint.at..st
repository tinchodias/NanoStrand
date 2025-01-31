actions
shutdownEndpoint: endpointId at: descriptor

	| ret |
	ret := self shutdownS: descriptor how: endpointId.
	^ self isValid: ret