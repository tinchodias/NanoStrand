private
setupLoopProcess

	self isRunning ifTrue: [ ^ self ].

	process := [ [ self loopPoll ] ensure: [ self release ] ] newProcess.
	process priority: self priority.
	process resume