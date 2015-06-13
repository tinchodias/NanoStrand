creating socket
newSocketOf: protocol
	| ret |
	ret := self nnSocket: AF_SP protocol: protocol.
	ret = -1 ifTrue: [^nil].
	^ret