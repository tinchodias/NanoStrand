retrieving constants
retrieveConstantDictionary
	| idx dict assoc |
	idx := 0.
	dict := Dictionary new.
	[assoc := self getConstantAssociationAt: idx.
	idx := idx + 1.
	assoc ifNil: [^dict].
	dict add: assoc.
	] repeat.
