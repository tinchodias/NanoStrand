retrieving constants
getConstantAssociationAt: index

	| intOut symName |
	intOut := self newIntHolder.
	symName := self uniqueInstance symbolAt: index outValue: intOut.
	symName ifNil: [ ^ nil ].
	^ symName asSymbol -> intOut value