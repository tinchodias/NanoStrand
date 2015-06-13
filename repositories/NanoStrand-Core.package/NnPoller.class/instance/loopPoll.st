private
loopPoll
	[self shouldPoll] 
		whileTrue: [
			[self poll] ifCurtailed: [self stop]
		]