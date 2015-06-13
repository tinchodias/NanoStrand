printing
printOn: aStream
	aStream nextPutAll: self class name, '('.
	aStream nextPutAll: self kind asString; space.
	aStream nextPutAll: self description asString.
	aStream nextPut: $)