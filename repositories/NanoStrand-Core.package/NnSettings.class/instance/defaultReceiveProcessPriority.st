accessing
defaultReceiveProcessPriority
	^self at: #defaultReceiveProcessPriority ifAbsentPut: [Processor userInterruptPriority-1]