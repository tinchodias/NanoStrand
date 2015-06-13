tests
testPubSub
	"self debug: #testPubSub"
	| sock1 sock2 sockPub receivedA receivedB |
	[self prepareForking. 

	[
		receivedA := OrderedCollection new.
		sock1 := NnSubSocket withConnect: 'tcp://127.0.0.1:5579'.
		1 seconds wait.
		sock1 subscribe: 'smalltalk'.
		10 timesRepeat: [
			 receivedA add: (sock1 receiveFor: 50 timeoutDo: ['?']) asString.
		].
		self done.
	] fork.

	[
		receivedB := OrderedCollection new.
		sock2 := NnSubSocket withConnect: 'tcp://127.0.0.1:5579'.
		0.1 seconds wait.
		sock2 subscribe: 'bugtalk'.
		10 timesRepeat: [
			 receivedB add: (sock2 receiveFor: 50 timeoutDo: ['?']) asString.
		].
		self done.
	] fork.
	
	[ 
		sockPub := NnPubSocket withBind: 'tcp://*:5579'.
		0.1 seconds wait.
		1 to: 20 do: [:idx |
			sockPub send: 'smalltalk:PUB', idx asString.
			0.05 seconds wait.
		].
		self done.
	] fork.

	self waitAllDone: 3.
	
	self assert: receivedA size = 10.
	self assert: receivedB size = 10.
	self assert: (receivedA allSatisfy: [:each | each beginsWith: 'smalltalk:PUB']).
	self assert: (receivedB allSatisfy: [:each | each = '?']).	
		
	] ensure: [
		sock1 close.
		sock2 close.
		sockPub close.
	]