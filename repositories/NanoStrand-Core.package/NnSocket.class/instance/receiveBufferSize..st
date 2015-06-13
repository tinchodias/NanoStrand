options
receiveBufferSize: bufSize
	"Size of the receive buffer, in bytes. To prevent blocking for messages larger than the buffer, exactly one message may be buffered in addition to the data in the receive buffer. The type of this option is int. Default value is 128kB."
	^self optionAt: self constants @ #NN_RCVBUF put: bufSize