class initialization
initClassPool
	"self initClassPool"
	<script>
	
	| constDict |
	constDict := [NnNbNanoMessageFFI retrieveConstantDictionary] 
		on: Error do: [:ex | Transcript cr; show: 'NnNbNanoMessageConstants class>>initClassPool failed! After the nanomsg library installation, try again!'. nil].
	constDict ifNil: [^nil].
	constDict keysAndValuesDo: [:k :v |
		(self classPool includesKey: k) ifFalse: [self addClassVarNamed: k].
		self classPool at: k put: v
	].
	