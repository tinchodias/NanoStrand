actions
closeSockets

	^ sockets do: [ :each | each close ]