private-error
signalError: code kind: kind otherInfo: otherInfo
	
	self logger error: {kind. otherInfo}.
	
	self settings errorReportLevel >= 2 ifTrue: [ | error |
		error := NnError code: code kind: kind otherInfo: otherInfo.
		^ error signal
	]
	