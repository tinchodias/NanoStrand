sending
send: bytes
	| selfOrCode |
	[self shouldTickSend and: [(selfOrCode := self forkAndWait: [ self trySend: bytes ] priority: self sendProcessPriority) isInteger]]
		whileTrue: [self handleSendErrorCode: selfOrCode].
	^ selfOrCode