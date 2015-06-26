private
waitFor: msecs
	msecs = 0 ifTrue: [^self].
	(Delay forMilliseconds: msecs) wait