tests
testPushPull
	"self debug: #testPushPull"
	| messages  received sock1 sock2 |
	[self prepareForking.
	messages := #('apple' 'banana' 'pineapple').
	[
	received := OrderedCollection new.
	sock1 := NnPullSocket withBind: 'tcp://*:5575'.
	3 timesRepeat: [received add: sock1 receive].
	self done.
	] fork.

	[ 
	sock2 := NnPushSocket withConnect: 'tcp://localhost:5575'.
	messages do: [:each | sock2 send: each].
	self done.
	] fork.

	self waitAllDone.

	self assert: received size = 3.
	1 to: 3 do:[:idx | self assert:((messages at: idx) asByteArray = (received at: idx))].
		
	] ensure: [
		sock1 close.
		sock2 close.
	]
	