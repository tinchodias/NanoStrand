class initialization
initClassPool
	"self initClassPool"
	<script>
	
	| constDict |
	"Note that the NN_MSG symbol is not exported by the nn_symbol function.
	(See nn_symbol doc for more details)"
	NN_MSG := 4294967295.
	
	[ constDict := LibNanomsgFacade retrieveConstantDictionary ]
		on: Error
		do: [ :ex |
			'NnConstants class>>initClassPool failed! After the nanomsg library installation, try again!' traceCr.
			^ nil ].

	constDict keysAndValuesDo: [ :k :v |
		(self classPool includesKey: k)
			ifFalse: [ self addClassVarNamed: k ].
		self classPool at: k put: v ].
	