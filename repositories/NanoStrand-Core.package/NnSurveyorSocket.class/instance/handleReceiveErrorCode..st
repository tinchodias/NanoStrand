private-error
handleReceiveErrorCode: errorCode
	super handleReceiveErrorCode: errorCode.
	
	"If we encounter ETIMEDOUT, we should stop receiving"
	(self constants @ #ETIMEDOUT) = errorCode ifTrue: [self deadlineReached: true].
	
	"Nanomsg 0.5 raises EFSM, instead of ETIMEDOUT. It is a bug(https://github.com/nanomsg/nanomsg/issues/194)."
	(self constants @ #EFSM) = errorCode ifTrue: [self deadlineReached: true].