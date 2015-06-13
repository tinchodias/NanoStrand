tests
testSurveyorRespondent
	"self debug: #testSurveyorRespondent"
	| received sock1 sock2 sock3 |
	[self prepareForking. 
	received := OrderedCollection new.
	[ 
		sock1 := NnSurveyorSocket withBind: 'tcp://*:5578'.
		2 timesRepeat: [
			0.05 seconds wait.
			sock1 send: 'survey'.
			0.1 seconds wait.
			received addAll: (sock1 receiveManyUntilDeadline: 200).
		].
	] fork.

	[
		sock2 := NnRespondentSocket withConnect: 'tcp://127.0.0.1:5578'.
		[sock2 isValid] whileTrue: [ | sur |
			sur := (sock2 receiveFor: 200 timeoutDo: []).
			sur isEmptyOrNil ifFalse: [
				sock2 send: sur asString, '-A-'.
				Processor yield
			]
		].
	] fork.

	[
		sock3 := NnRespondentSocket withConnect: 'tcp://127.0.0.1:5578'.
		[sock3 isValid] whileTrue: [ | sur |
			sur := (sock3 receiveFor: 200 timeoutDo: []).
			sur isEmptyOrNil ifFalse: [
				sock3 send: sur asString, '-B-'.
				Processor yield
			]
		].
	] fork.

	semaphore waitTimeoutSeconds: 3.
	
	self assert: received size = 4.
	self assert: ((received select: [:each | '*-A-*' match: each asString]) size =2).
	self assert: ((received select: [:each | '*-B-*' match: each asString]) size =2).
		
	] ensure: [
		sock1 close.
		sock2 close.
		sock3 close.
	]