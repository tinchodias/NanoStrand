actions
poll

	| arr |
	arr := pollDescriptorArray.
	ffi poll: arr timeout: self intervalMilliseconds.

	arr do: [ :each | self pollEach: each ]