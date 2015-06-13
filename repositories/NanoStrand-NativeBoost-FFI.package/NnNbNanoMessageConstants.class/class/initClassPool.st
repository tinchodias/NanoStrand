class initialization
initClassPool
	"self initClassPool"
	<script>
	
	| constDict |
	constDict := NnNbNanoMessageFFI retrieveConstantDictionary.
	constDict ifNil: [^nil].
	constDict keysAndValuesDo: [:k :v |
		(self classPool includesKey: k) ifFalse: [self addClassVarNamed: k].
		self classPool at: k put: v
	].
	