creating socket
newSocketOf: protocol

	| ret |
	ret := self socketDomain: AF_SP protocol: protocol.
	ret = -1 ifTrue: [ ^ nil ].
	^ ret