options
lingerMilliseconds: msecs
	"Specifies how long the socket should try to send pending outbound messages after nn_close() have been called, in milliseconds. Negative value means infinite linger. The type of the option is int. Default value is 1000 (1 second)."
	^self optionAt: self constants @ #NN_LINGER put: msecs