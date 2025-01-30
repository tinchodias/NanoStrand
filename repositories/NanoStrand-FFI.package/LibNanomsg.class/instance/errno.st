public
errno

	^ self ffiCall: #(int #errno())