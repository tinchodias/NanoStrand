accessing
errorString
	code isNil ifTrue: [^''].
	^ errorString ifNil: [errorString := NnPortableUtil default ffi getErrorStringAt: code].