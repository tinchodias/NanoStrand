sending
trySend: bytes sized: wantedSize
	| ret |
	[ret := ffi nonBlockingSend: bytes sized: wantedSize at: descriptor] on: Error do: [:ex |
		self signalError: #trySend:sized: originalError: ex.
		^0
	].
	ret = -1 ifTrue: [^ffi getErrorNumber].
	ret = bytes size ifFalse: [
		self signalError: #trySend:sized: otherInfo: {'supposed size'->ret, 'sent size'->bytes size} asDictionary.
		^0
	].
	^self "success"