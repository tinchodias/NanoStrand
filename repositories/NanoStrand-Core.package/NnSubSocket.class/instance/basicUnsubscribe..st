private
basicUnsubscribe: topic
	"Defined on full SUB socket. Subscribes for a particular topic. Type of the option is string. A single NN_SUB socket can handle multiple subscriptions."
	"Topic is forward match. Topic with zero length matches any message"

	^(self optionAt: self constants @ #NN_SUB_UNSUBSCRIBE put: topic level: self constants @ #NN_SUB)
	