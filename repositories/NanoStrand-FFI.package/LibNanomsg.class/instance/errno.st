public
errno

	^ self ffiCall: #(int nn_errno())