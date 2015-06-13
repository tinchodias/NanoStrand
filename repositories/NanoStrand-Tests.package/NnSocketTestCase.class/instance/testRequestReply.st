tests
testRequestReply
	"self debug: #testRequestReply"
	| received sock1 sock2 |
	[self prepareForking.
	received := OrderedCollection new.
	[ |i |
		sock1 := NnRequestSocket withConnect: 'tcp://127.0.0.1:5577'.
		0.1 seconds wait.
		i := 0.
		[sock1 isValid] whileTrue: [ |rec |
			sock1 send: (i := i + 1) asString.
			rec := received add: sock1 receive.
		].
		self done.
	] fork.

	[ 
	sock2 := NnReplySocket withBind: 'tcp://*:5577'.
		10 timesRepeat: [
			received add:sock2 receive.
			sock2 send: 'RE:', received last asString.
		].
		self done.
	] fork.

	self waitAllDone.
	self assert: received size = 20.
	received pairsDo: [:a :b |
		self assert: ('RE:', a asString) = b asString.	
	].
		
	] ensure: [
		sock1 close.
		sock2 close.
	]