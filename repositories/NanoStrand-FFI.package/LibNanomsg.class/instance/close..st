public
close: s

	^ self ffiCall: #(int nn_close(int s))