private-error
signalWarning: kind otherInfo: otherInfo
	self logger warn: {kind. otherInfo}.
	
	self settings errorReportLevel >= 1 ifTrue: [ | error |
		error := NnWarning kind: kind otherInfo: otherInfo.
		^ error signal
	]