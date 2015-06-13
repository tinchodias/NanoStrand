receiving
receiveManyUntilDeadline: msecs
	| received startTime |
	self deadlineReached: false.
	self deadlineMilliseconds: msecs.
	startTime := Time millisecondClockValue.
	received := OrderedCollection new.
	[ self deadlineReached ]
		whileFalse: [ | rec |
			rec := self receiveFor: msecs timeoutDo: [#[]].
			rec notEmpty ifTrue: [received add: rec].
			(Time millisecondsSince: startTime) > msecs
				ifTrue: [ 
					self deadlineReached: true.
					^ received ].
				
			 ].
	^ received