private
waitFor: milliseconds

	milliseconds = 0 ifTrue: [ ^ self ].
	(Delay forMilliseconds: milliseconds) wait