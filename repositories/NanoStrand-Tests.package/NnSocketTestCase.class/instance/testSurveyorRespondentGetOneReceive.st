tests
testSurveyorRespondentGetOneReceive
	"self debug: #testSurveyorRespondentGetOneReceive"
	| received sock1 sock2 sock3 |
	[self prepareForking. 
	received := OrderedCollection new.
	[ 
		sock1 := NnSurveyorSocket withBind: 'tcp://*:15578'.
		sock1 deadlineMilliseconds: 500.
		2 timesRepeat: [
			0.05 seconds wait.
			sock1 send: 'survey'.
			0.1 seconds wait.
			received add: (sock1 receiveFor: 500 timeoutDo: ['?']).
		].
		self done.
	] fork.

	[
		sock2 := NnRespondentSocket withConnect: 'tcp://127.0.0.1:15578'.
		[sock2 isValid] whileTrue: [ | sur |
			sur := (sock2 receiveFor: 500 timeoutDo: []).
			sur isEmptyOrNil ifFalse: [
				sock2 send: sur asString, '-A-'.
				Processor yield
			]
		].
	] fork.

	[
		sock3 := NnRespondentSocket withConnect: 'tcp://127.0.0.1:15578'.
		[sock3 isValid] whileTrue: [| sur |
			sur := (sock3 receiveFor: 500 timeoutDo: []).
			sur isEmptyOrNil ifFalse: [
				sock3 send: sur asString, '-B-'.
				Processor yield
			]
		].
	] fork.	

	semaphore waitTimeoutSeconds: 3.
	
	self assert: received size = 2.
	self assert: ((received select: [:each | '*survey-*' match: each asString]) size = 2).
		
	] ensure: [
		sock1 close.
		sock2 close.
		sock3 close.
	]