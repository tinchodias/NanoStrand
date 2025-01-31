actions
bind: addressString at: descriptor

	| eid |
	eid := self bindS: descriptor addr: addressString.
	eid = -1 ifTrue: [ ^ nil ].
	^ eid