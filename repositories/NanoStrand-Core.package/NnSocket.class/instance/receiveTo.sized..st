receiving
receiveTo: buffer sized: wantedSize
	| bytesOrCode |
	[bytesOrCode := nil.
	self shouldTickReceive and:[(bytesOrCode := self forkAndWait: [ self tryReceiveTo: buffer sized: wantedSize ] priority: self receiveProcessPriority) isInteger]]
		whileTrue: [self handleReceiveErrorCode: bytesOrCode].
	bytesOrCode ifNil: [self signalWarning: #receive:sized: description: 'socket invalid'. ^#[]].
	^ bytesOrCode