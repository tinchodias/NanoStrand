poller-callback
dispatchOnPoll: aPollDescriptor
	"Should be overriden for some sockets"
	aPollDescriptor canSendReceive
		ifTrue: [ ^ self onSendReceiveReady]
	