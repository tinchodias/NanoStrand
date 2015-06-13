private-error
signalError: kind originalError: originalError
	^self signalError: 0 kind: kind otherInfo: {#originalError -> originalError} asDictionary