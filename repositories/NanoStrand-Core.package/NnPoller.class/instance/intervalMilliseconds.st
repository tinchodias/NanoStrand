accessing
intervalMilliseconds
	^ intervalMilliseconds ifNil: [intervalMilliseconds := self settings defaultPollerIntervalMilliseconds]