actions
onePoll
	"Intended for being called from other event loops (for example, in morphic tick method)"
	(self shouldPoll) 
		ifTrue: [
			[self poll] ifCurtailed: [self stop]
		]