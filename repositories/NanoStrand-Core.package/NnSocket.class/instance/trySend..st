sending
trySend: bytes
	| ret |
	[ret := ffi nonBlockingSend: bytes at: descriptor] on: Error do: [:ex| 
		self signalError: #trySend originalError: ex.
		^0
	].
	ret = -1 ifTrue: [^ffi getErrorNumber].
	ret = bytes size ifFalse: [
		self signalError: #trySend: otherInfo: {'supposed size'->ret, 'sent size'->bytes size} asDictionary.
		^0
	].
	^self "success"
	