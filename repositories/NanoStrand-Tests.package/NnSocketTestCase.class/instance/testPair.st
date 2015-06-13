tests
testPair
	"self debug: #testPushPull"
	| received sock1 sock2 |
	[
	self prepareForking.
	received := OrderedCollection new.
	[
	sock1 := NnPairSocket withBind: 'tcp://*:5576'.
	sock1 send: 'hello'.
	received add: sock1 receive.
	self done.
	] fork.

	[ 
	sock2 := NnPairSocket withConnect: 'tcp://localhost:5576'.
	0.1 seconds wait.
	sock2 send: 'goodbye'.
	received add: sock2 receive.
	self done.
	] fork.

	self waitAllDone.

	self assert: received size = 2.
	self assert: (received at: 1) = 'hello' asByteArray.
	self assert: (received at: 2) = 'goodbye' asByteArray.
		
	] ensure: [
		sock1 close.
		sock2 close.
	]
	