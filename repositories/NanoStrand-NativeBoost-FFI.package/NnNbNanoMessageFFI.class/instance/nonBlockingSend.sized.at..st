actions
nonBlockingSend: bytes sized: wantedSize at: descriptor
	^self send: bytes sized: wantedSize flags: NN_DONTWAIT at: descriptor