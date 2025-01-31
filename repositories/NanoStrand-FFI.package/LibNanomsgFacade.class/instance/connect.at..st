actions
connect: addressString at: descriptor

	| eid |
	eid := self connectS: descriptor addr: addressString.
	eid = -1 ifTrue: [ ^ nil ].
	^ eid