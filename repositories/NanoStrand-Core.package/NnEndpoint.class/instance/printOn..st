printing
printOn: aStream
	aStream nextPutAll: 'endpoint('.
	aStream nextPutAll: self id asString; space.
	aStream nextPutAll: self kind asString; space.
	aStream nextPutAll: self addressString asString.
	aStream nextPutAll: ')'
	