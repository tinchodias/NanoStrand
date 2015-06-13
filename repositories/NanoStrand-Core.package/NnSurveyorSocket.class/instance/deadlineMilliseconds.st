options
deadlineMilliseconds
	"Specifies how long to wait for responses to the survey. Once the deadline expires, receive function will return ETIMEDOUT error and all subsequent responses to the survey will be silently dropped. The deadline is measured in milliseconds. Option type is int. Default value is 1000 (1 second)."
	^self optionAt: self constants @ #NN_SURVEYOR_DEADLINE level: self constants @ #NN_SURVEYOR