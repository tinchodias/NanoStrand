options
onlyForIPV4
	"If set to 1, only IPv4 addresses are used. If set to 0, both IPv4 and IPv6 addresses are used. The type of the option is int. Default value is 1."
	^(self optionAt: self constants @ #NN_IPV4ONLY) = 1