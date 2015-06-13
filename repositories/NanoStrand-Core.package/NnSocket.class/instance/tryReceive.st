receiving
tryReceive
	| bytes |
	bytes := [ffi nonBlockingReceiveAt: descriptor] on: Error do: [:ex |
		self signalError: #tryReceive: originalError: ex.
		^#[]
	].
	bytes ifNil: [^ffi getErrorNumber].
	^ bytes