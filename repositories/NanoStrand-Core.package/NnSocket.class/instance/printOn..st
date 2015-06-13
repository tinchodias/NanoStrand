printing
printOn: aStream
	aStream nextPutAll: self class name; nextPut: $(.
	aStream nextPutAll: descriptor asString.
	endpoints ifNotNil: [
		aStream nextPutAll: ', '.
		aStream nextPutAll: self endpoints size asString, ' endpoints'.
	].
	aStream nextPut: $)