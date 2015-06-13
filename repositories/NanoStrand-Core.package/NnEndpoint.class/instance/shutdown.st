actions
shutdown
	self socket ifNil: [^self].
	(self socket shutdownEndpoint: self) ifTrue: [socket := nil]