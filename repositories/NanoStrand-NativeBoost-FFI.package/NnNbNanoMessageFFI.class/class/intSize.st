accessing
intSize
	^IntSize ifNil: [IntSize := NBExternalType sizeOf: 'int']