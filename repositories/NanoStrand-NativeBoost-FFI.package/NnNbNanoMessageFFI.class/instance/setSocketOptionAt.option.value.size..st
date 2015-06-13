actions
setSocketOptionAt: descriptor option: option value: valPtr size: valSize
	^self setSocketOptionAt: descriptor level: NN_SOL_SOCKET option: option value: valPtr size: valSize