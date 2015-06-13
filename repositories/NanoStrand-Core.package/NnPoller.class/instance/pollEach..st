private
pollEach: eachPollDesc
	| socket |
	eachPollDesc ignorable ifTrue: [^self].
	socket := self sockets at: eachPollDesc fd ifAbsent: [^self].
	
	socket dispatchOnPoll: eachPollDesc.
	