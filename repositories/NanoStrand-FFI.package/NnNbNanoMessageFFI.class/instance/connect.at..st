actions
connect: addressString at: descriptor
	| eid |
	eid := self nnConnectAt: descriptor address: addressString.
	eid = -1 ifTrue: [^nil].
	^eid