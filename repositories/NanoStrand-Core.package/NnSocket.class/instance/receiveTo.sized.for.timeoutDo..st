receiving
receiveTo: buffer sized: wantedSize for: timeoutMsecs timeoutDo: aBlock
	| startTime tickInterval bytesOrCode |
	startTime := Time millisecondClockValue.
	tickInterval := self tickMilliseconds min: timeoutMsecs max: 1.
	[bytesOrCode := nil.
	self shouldTickReceive and:[(bytesOrCode := self forkAndWait: [ self tryReceiveTo: buffer sized: wantedSize ] priority: self receiveProcessPriority) isInteger]]
		whileTrue: [ 
			self handleReceiveErrorCode: bytesOrCode.
			(Time millisecondsSince: startTime) > timeoutMsecs
				ifTrue: [ ^ aBlock value] ].
	bytesOrCode ifNil: [self signalWarning: #receive:sized:for:timeoutDo: description: 'socket invalid'. ^#[]].
	^ bytesOrCode