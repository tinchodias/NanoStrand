options
resendInterval: msecs
	"This option is defined on the full REQ socket. If reply is not received in specified amount of milliseconds, the request will be automatically resent. The type of this option is int. Default value is 60000 (1 minute)."
	^self optionAt: self constants @ #NN_REQ_RESEND_IVL put: msecs level: self constants @ #NN_REQ