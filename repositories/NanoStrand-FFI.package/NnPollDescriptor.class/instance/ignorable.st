testing
ignorable
	"self revents > 0 ifTrue: [Transcript space; show: self revents]."
	^self revents = 0