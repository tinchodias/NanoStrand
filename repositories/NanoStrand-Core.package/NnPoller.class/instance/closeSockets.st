actions
closeSockets
	^self sockets do: [:each | each close]
	