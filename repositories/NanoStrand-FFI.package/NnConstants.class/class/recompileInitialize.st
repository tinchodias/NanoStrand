class initialization
recompileInitialize
	<script>
	
	| code |
	code := String streamContents: [ :stream |
		
		stream << 'initialize'; cr; cr.

		"The NN_MSG symbol is not exported by the nn_symbol function.
		(See nn_symbol doc for more details)"
		stream << '	NN_MSG := 4294967295.'; cr; cr.

		LibNanomsgFacade uniqueInstance
			allSymbolNamesAndValuesDo: [ :k :v |
				(self classPool includesKey: k)
					ifFalse: [ self addClassVarNamed: k ].
			
			stream << ('	{1} := {2}.' format: { k. v }); cr ] ].

	self classSide compile: code