poller-callback
onSendReady
	sendReadyBlock ifNil: [^self].
	sendReadyBlock value: self