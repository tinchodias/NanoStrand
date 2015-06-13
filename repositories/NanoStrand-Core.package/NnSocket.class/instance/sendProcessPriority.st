accessing
sendProcessPriority
	^ sendProcessPriority ifNil: [sendProcessPriority := self settings defaultSendProcessPriority]