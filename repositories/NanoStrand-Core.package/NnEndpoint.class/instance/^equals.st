comparing
= otherEndpoint
	self class = otherEndpoint class ifFalse: [^false].
	self id = otherEndpoint id ifFalse: [^false].
	self kind = otherEndpoint kind ifFalse: [^false].
	self addressString = otherEndpoint addressString ifFalse: [^false].
	^true