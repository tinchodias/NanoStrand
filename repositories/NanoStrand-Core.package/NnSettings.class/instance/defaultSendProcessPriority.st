accessing
defaultSendProcessPriority
	^self at: #defaultSendProcessPriority ifAbsentPut: [Processor userInterruptPriority-1]