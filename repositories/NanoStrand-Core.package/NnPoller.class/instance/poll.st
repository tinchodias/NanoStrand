actions
poll
	| arr |
	arr := self pollDescriptorArray.
	ffi poll: arr timeout: self intervalMilliseconds.
	
	arr do: [:eachPollDesc |
		self pollEach: eachPollDesc
	]