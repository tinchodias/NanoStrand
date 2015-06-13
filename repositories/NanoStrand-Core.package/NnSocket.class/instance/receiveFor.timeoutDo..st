receiving
receiveFor: timeoutMsecs timeoutDo: aBlock
	| startTime tickInterval bytesOrCode |
	startTime := Time millisecondClockValue.
	tickInterval := self tickMilliseconds min: timeoutMsecs max: 1.
	[bytesOrCode := nil.
	self shouldTickReceive and:[(bytesOrCode := self forkAndWait: [ self tryReceive ] priority: self receiveProcessPriority) isInteger]]
		whileTrue: [ 
			self handleReceiveErrorCode: bytesOrCode.
			(Time millisecondsSince: startTime) > timeoutMsecs
				ifTrue: [ ^ aBlock value ] ].
	bytesOrCode ifNil: [self signalWarning: #receive:timeoutDo: description: 'socket invalid'. ^#[]].
	^ bytesOrCode