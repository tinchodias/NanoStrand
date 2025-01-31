accessing
intSize

	^ IntSize ifNil: [ IntSize := FFIExternalType sizeOf: 'int' ]