actions
shutdownEndpoint: endpoint
	(self ffi shutdownEndpoint: endpoint id at: descriptor)
		ifTrue: [self endpoints remove: endpoint ifAbsent:[]. ^true].
		
	^false
		