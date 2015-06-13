poller-callback
onSendReceiveReady
	sendReceiveReadyBlock ifNil: [^self].
	sendReceiveReadyBlock value: self