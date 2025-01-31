factory
newSizeHolder: anInteger

	| holder |
	holder := self newSizeHolder.
	holder value: anInteger.
	^ holder