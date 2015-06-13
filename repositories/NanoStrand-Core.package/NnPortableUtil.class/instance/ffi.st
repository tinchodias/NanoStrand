accessing
ffi
	^ ffi ifNil: [ffi := self ffiClass new]