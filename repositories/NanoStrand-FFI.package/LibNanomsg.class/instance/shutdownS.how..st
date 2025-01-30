public
shutdownS: s how: how

	^ self ffiCall: #(int nn_shutdown(int s, int how))