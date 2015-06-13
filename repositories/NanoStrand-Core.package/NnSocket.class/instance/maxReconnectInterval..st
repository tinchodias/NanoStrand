options
maxReconnectInterval: msecs
	"This option is to be used only in addition to NN_RECONNECT_IVL option. It specifies maximum reconnection interval. On each reconnect attempt, the previous interval is doubled until NN_RECONNECT_IVL_MAX is reached. Value of zero means that no exponential backoff is performed and reconnect interval is based only on NN_RECONNECT_IVL. If NN_RECONNECT_IVL_MAX is less than NN_RECONNECT_IVL, it is ignored. The type of the option is int. Default value is 0."
	^self optionAt: self constants @ #NN_RECONNECT_IVL_MAX put: msecs