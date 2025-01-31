retrieving constants
retrieveConstantDictionary

	| idx dict assoc |
	self initialize.
	idx := 0.
	dict := Dictionary new.
	[
		assoc := self getConstantAssociationAt: idx.
		idx := idx + 1.
		assoc ifNil: [ ^ dict ].
		dict add: assoc ] repeat