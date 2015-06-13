actions
bind: addressString
	| eid |
	eid := ffi bind: addressString at: descriptor.
	eid ifNil: [^self signalError: eid kind: #bind otherInfo: addressString].
	
	^self endpoints add: (NnEndpoint id: eid kind: #bind addressString: addressString socket: self)