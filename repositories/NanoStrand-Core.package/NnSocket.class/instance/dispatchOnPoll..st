poller-callback
dispatchOnPoll: aPollDescriptor
	"Should be overriden for some sockets"

	aPollDescriptor canReceive ifTrue: [ ^ self onReceiveReady ].

	aPollDescriptor canSend ifTrue: [ ^ self onSendReady ]