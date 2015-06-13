private-error
handleSendErrorCode: errorCode
	(self constants isRetryableError: errorCode) ifTrue: [self waitFor: self tickMilliseconds].
