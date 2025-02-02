actions
allSymbolNamesAndValuesDo: aTwoArgumentsBlock

	| intOut index |
	intOut := self class newIntHolder.
	index := 0.
	[	| symName |
		symName :=
			self
				symbolAt: index
				outValue: intOut tfPointerAddress.
		symName ifEmpty: [ ^ self ].
		aTwoArgumentsBlock value: symName value: intOut value.
		index := index + 1 ] repeat