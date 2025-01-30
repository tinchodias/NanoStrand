creating socket
newRawSocketOf: protocol
	| ret |
	ret := self nnSocket: AF_SP_RAW protocol: protocol.
	ret = -1 ifTrue: [^nil].
	^ret