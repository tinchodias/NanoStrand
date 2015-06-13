sending
send: buffer sized: wantedSize for: timeoutMsecs timeoutDo: aBlock
	| startTime tickInterval selfOrCode |
	startTime := Time millisecondClockValue.
	tickInterval := self tickMilliseconds min: timeoutMsecs max: 1.
	[self shouldTickSend and: [(selfOrCode := self forkAndWait: [ self trySend: buffer sized: wantedSize ] priority: self sendProcessPriority) isInteger]]
		whileTrue: [ 
			self handleSendErrorCode: selfOrCode.
			(Time millisecondsSince: startTime) > timeoutMsecs
				ifTrue: [ ^ aBlock value] ].
	^ selfOrCode