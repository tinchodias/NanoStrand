tests
testOptions
	| sock1 |
	[sock1 := NnSubSocket new.
	sock1 lingerMilliseconds: 500.
	sock1 maxReconnectInterval: 20.
	"sock1 receivePriority: 9." "Bug on nanomsg 0.5-beta: https://github.com/nanomsg/nanomsg/issues/374"
	sock1 receiveTimeout: 120.
	sock1 reconnectInterval: 130.
	sock1 receiveBufferSize: 30.
	sock1 sendBufferSize: 400.
	sock1 sendPriority: 12.
	sock1 sendTimeout: 800.
	sock1 onlyForIPV4: false.
	sock1 tcpNoDelay: true.
	sock1 socketName: 'auau'.
	
	self assert: (sock1 lingerMilliseconds = 500).
	self assert: (sock1 maxReconnectInterval = 20).
	"self assert: (sock1 receivePriority = 9)." 
	self assert: (sock1 receiveTimeout = 120).
	self assert: (sock1 reconnectInterval = 130).
	self assert: (sock1 receiveBufferSize = 30).
	self assert: (sock1 sendBufferSize = 400).
	self assert: (sock1 sendPriority = 12).
	self assert: (sock1 sendTimeout = 800).
	self deny: (sock1 onlyForIPV4).
	self assert: (sock1 tcpNoDelay).
	self assert: (sock1 socketName = 'auau').
	] ensure: [
	sock1 close.
	]
	