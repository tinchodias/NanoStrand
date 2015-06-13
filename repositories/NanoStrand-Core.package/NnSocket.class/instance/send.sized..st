sending
send: buffer sized: wantedSize
	| selfOrCode |
	[self shouldTickSend and:[ (selfOrCode := self forkAndWait: [self trySend: buffer sized: wantedSize ] priority: self sendProcessPriority) isInteger]]
		whileTrue: [self handleSendErrorCode: selfOrCode].
	^ selfOrCode