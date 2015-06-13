options
reconnectInterval: msecs
	"For connection-based transports such as TCP, this option specifies how long to wait, in milliseconds, when connection is broken before trying to re-establish it. Note that actual reconnect interval may be randomised to some extent to prevent severe reconnection storms. The type of the option is int. Default value is 100 (0.1 second)."
	^self optionAt: self constants @ #NN_RECONNECT_IVL put: msecs