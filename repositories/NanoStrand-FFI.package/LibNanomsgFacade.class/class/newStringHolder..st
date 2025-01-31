factory
newStringHolder: aString

	| holder |
	holder := self newStringHolder.
	holder value: aString.
	^ holder