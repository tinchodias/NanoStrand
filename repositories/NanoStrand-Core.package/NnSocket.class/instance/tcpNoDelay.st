options
tcpNoDelay
	"This option, when set to 1, disables Nagle’s algorithm. It also disables delaying of TCP acknowledgments. Using this option improves latency at the expense of throughput. Type of this option is int. Default value is 0."
	^(self optionAt: self constants @ #NN_TCP_NODELAY level: self constants @ #NN_TCP) = 1