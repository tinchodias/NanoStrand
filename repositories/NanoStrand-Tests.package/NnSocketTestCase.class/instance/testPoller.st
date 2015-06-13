tests
testPoller
	"self debug: #testPoller"
	| received sock1 sock2 poller |
	received := OrderedCollection new.
	self prepareForking. 
	[
	[sock1 := NnPullSocket withConnect: 'tcp://127.0.0.1:5585'.
	sock1 onReceiveReady: [:sock | received add: ('#PULL: ', sock receive asString)].

	sock2 := NnPushSocket withBind: 'tcp://127.0.0.1:5585'.
	sock2 onSendReady: [:sock | sock send: '#PUSH: ', Time now printString].

	poller := NnPoller new.
	poller priority: Processor userBackgroundPriority.
	poller startWithSockets: {sock1. sock2}.

	2 seconds wait.

	] ensure: [
	poller stopAndCloseSockets.
	
	self done.
	]
	] fork.

	semaphore waitTimeoutSeconds: 2.5.
	self assert: (received size > 150).
	
	
	