creating socket
newRawSocketOf: protocol

	| ret |
	ret := self socketDomain: AF_SP_RAW protocol: protocol.
	ret = -1 ifTrue: [ ^ nil ].
	^ ret