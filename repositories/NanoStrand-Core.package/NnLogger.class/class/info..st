actions
info: record
	"Use Nagare-logger for production"
	self isDebugging ifFalse: [^self].
	Transcript cr; show: 'INFO:', record asString