actions
nonBlockingReceiveAt: descriptor
	^self receiveWithFlags: NN_DONTWAIT at: descriptor