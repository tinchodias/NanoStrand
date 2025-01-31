actions
getSocketOptionString: option level: level at: descriptor

	^ self
		  getSocketOptionStringAt: descriptor
		  level: level
		  option: option