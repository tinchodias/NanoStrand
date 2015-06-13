accessing
defaultPollerIntervalMilliseconds
	^self at: #defaultPollerIntervalMilliseconds ifAbsentPut: [50]