options
socketName
	"Socket name for error reporting and statistics. The type of the option is string. Default value is 'N' where N is socket integer. This option is experimental, see nn_env(7) for details"
	^self optionStringAt: self constants @ #NN_SOCKET_NAME