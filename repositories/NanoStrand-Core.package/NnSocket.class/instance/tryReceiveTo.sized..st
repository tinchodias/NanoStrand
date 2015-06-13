receiving
tryReceiveTo: buffer sized: wantedSize
	| bytes |
	bytes := [ffi nonBlockingReceiveTo: buffer sized: wantedSize at: descriptor] on: Error do: [:ex |
		self signalError: #tryReceive: originalError: ex.
		^#[]
	].
	bytes ifNil: [^ffi getErrorNumber].
	^ bytes