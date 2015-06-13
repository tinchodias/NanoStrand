accessing
sockets
	^ sockets ifNil: [sockets := Dictionary new]