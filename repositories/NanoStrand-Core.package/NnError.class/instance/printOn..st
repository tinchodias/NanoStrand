printing
printOn: aStream
	aStream nextPutAll: self class name, '('.
	aStream nextPutAll: self code asString; space.
	aStream nextPutAll: self kind asString; space.
	aStream nextPutAll: self errorString asString.
	aStream nextPut: $)