actions
send: buffer sized: bufferSize flags: flags at: descriptor

	^ self
		  sendS: descriptor
		  buf: buffer
		  len: bufferSize
		  flags: flags