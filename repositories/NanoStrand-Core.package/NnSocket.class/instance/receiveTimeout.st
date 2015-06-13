options
receiveTimeout
	"The timeout for recv operation on the socket, in milliseconds. If message cannot be received within the specified timeout, EAGAIN error is returned. Negative value means infinite timeout. The type of the option is int. Default value is -1."
	^self optionAt: self constants @ #NN_RCVTIMEO