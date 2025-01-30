actions
bind: addressString at: descriptor
	| eid |
	eid := self nnBindAt: descriptor address: addressString.
	eid = -1 ifTrue: [^nil].
	^eid