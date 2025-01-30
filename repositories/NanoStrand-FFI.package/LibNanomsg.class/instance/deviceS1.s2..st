public
deviceS1: s1 s2: s2

	^ self ffiCall: #(int nn_device(int s1, int s2))