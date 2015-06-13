retrieving constants
getConstantAssociationAt: index
	| inst intOut symName |
	inst := self new.
	intOut := self newIntHolder.
	symName := inst symbolAt: index outValue: intOut.
	symName ifNil: [^nil].
	^symName asSymbol -> intOut value