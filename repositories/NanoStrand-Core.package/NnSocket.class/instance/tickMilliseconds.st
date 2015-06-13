accessing
tickMilliseconds
	^tickMilliseconds ifNil: [tickMilliseconds := self settings defaultTickMilliseconds]