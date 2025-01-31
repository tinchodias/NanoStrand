initialize-release
initWithProtocol: protocol raw: aBoolean

	descriptor := aBoolean
		              ifTrue: [ ffi newRawSocketOf: protocol ]
		              ifFalse: [ ffi newSocketOf: protocol ]