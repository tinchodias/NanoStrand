private
waitFor: msecs
	msecs = 0 ifTrue: [^self].
	self portableUtil waitMilliseconds: msecs