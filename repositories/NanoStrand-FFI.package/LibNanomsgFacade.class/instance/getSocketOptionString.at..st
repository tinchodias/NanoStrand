actions
getSocketOptionString: option at: descriptor

	^ self
		  getSocketOptionStringAt: descriptor
		  level: NN_SOL_SOCKET
		  option: option