options
receivePriority
	"Sets inbound priority for endpoints subsequently added to the socket. This option has no effect on socket types that are not able to receive messages. When receiving a message, messages from peer with higher priority are received before messages from peer with lower priority. The type of the option is int. Highest priority is 1, lowest priority is 16. Default value is 8."
	^self optionAt: self constants @ #NN_RCVPRIO