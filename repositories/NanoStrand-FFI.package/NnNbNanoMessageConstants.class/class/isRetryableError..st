error handling
isRetryableError: errorCode
	errorCode = EAGAIN ifTrue: [^true].
	errorCode = EFSM ifTrue: [^true].
	errorCode = EINTR ifTrue: [^true].
	^false