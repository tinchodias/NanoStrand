accessing
defaultTickMilliseconds
	^self at: #defaultTickMilliseconds ifAbsentPut: [10]