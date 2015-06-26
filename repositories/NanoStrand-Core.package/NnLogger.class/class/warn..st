actions
warn: record
	"Use Nagare-logger for production"
	self isDebugging ifFalse: [^self].
	Transcript cr; show: 'WARN:', record asString