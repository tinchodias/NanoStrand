tests
testBus
	"self debug: #testBus"
	| received1 received2 received3 bus1 bus2 bus3|
	[
	self prepareForking.
	[received1 := OrderedCollection new.
	bus1 := NnBusSocket withBind: 'tcp://*:5580'.
	bus1 connect: 'tcp://127.0.0.1:5581'.
	bus1 connect: 'tcp://127.0.0.1:5582'.
	1 to: 30 do: [:idx | 
		bus1 send: 'bus1-', idx asString.
		received1 add: (bus1 receiveFor: 50 timeoutDo:['?']) asString.
	].
	self done.
	] fork.

	[received2 := OrderedCollection new.
	bus2 := NnBusSocket withBind: 'tcp://*:5581'.
	bus2 connect: 'tcp://127.0.0.1:5580'.
	bus2 connect: 'tcp://127.0.0.1:5582'.
	
	1 to: 30 do: [:idx | 
		bus2 send: 'bus2-', idx asString.
		received2 add: (bus2 receiveFor: 50 timeoutDo:['?']) asString.
	].
	self done.
	] fork.

	[received3 := OrderedCollection new.
	bus3 := NnBusSocket withBind: 'tcp://*:5582'.
	bus3 connect: 'tcp://127.0.0.1:5580'.
	bus3 connect: 'tcp://127.0.0.1:5581'.
	1 to: 30 do: [:idx | 
		bus3 send: 'bus3-', idx asString.
		received3 add: (bus3 receiveFor: 50 timeoutDo:['?']) asString.
	].
	self done.
	] fork.

	self waitAllDone:3.

	self assert: received1 size = 30.
	self assert: received2 size = 30.
	self assert: received3 size = 30.
	self assert: (received1 allButFirst allSatisfy: [:each | (each beginsWith: 'bus2-') or: [each beginsWith: 'bus3-']]).
	self assert: (received2 allButFirst allSatisfy: [:each | (each beginsWith: 'bus1-') or: [each beginsWith: 'bus3-']]).
	self assert: (received3 allButFirst allSatisfy: [:each | (each beginsWith: 'bus1-') or: [each beginsWith: 'bus2-']]).
		
	] ensure: [
		bus1 ifNotNil: [ bus1 close ].
		bus2 ifNotNil: [ bus2 close ].
		bus3 ifNotNil: [ bus3 close ].
	]
	