actions
subscribe: topic
	"Defined on full SUB socket. Subscribes for a particular topic. Type of the option is string. A single NN_SUB socket can handle multiple subscriptions."
	"Topic is forward match. Topic with zero length matches any message"

	(self basicSubscribe:topic)
		ifTrue: [ 
			self subscriptions add: topic.
			^ true ].
	^ false