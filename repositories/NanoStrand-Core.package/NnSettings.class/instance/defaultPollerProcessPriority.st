accessing
defaultPollerProcessPriority
	^self at: #defaultPollerProcessPriority ifAbsentPut: [Processor userSchedulingPriority]