receiving
receive
	| bytesOrCode |
	[bytesOrCode := nil.
	self shouldTickReceive and:[(bytesOrCode := self forkAndWait: [ self tryReceive ] priority: self receiveProcessPriority) isInteger]]
		whileTrue: [self handleReceiveErrorCode: bytesOrCode].
	bytesOrCode ifNil: [self signalWarning: #receive description: 'socket invalid'. ^#[]].
	^ bytesOrCode