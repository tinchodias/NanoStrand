accessing
errorReportLevel
	^self at: #errorReportLevel ifAbsentPut: [0]