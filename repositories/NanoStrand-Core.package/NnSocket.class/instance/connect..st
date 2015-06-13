actions
connect: addressString
	| eid |
	eid := ffi connect: addressString at: descriptor.
	eid ifNil: [^self signalError: eid kind: #connect otherInfo: addressString].
	
	^self endpoints add: (NnEndpoint id: eid kind: #connect addressString: addressString socket: self)