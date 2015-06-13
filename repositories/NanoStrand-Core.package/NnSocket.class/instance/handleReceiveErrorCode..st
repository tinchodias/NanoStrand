private-error
handleReceiveErrorCode: errorCode
	(self constants isRetryableError: errorCode) ifTrue: [self waitFor: self tickMilliseconds].
