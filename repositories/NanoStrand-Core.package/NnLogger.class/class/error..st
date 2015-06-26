actions
error: record
	"Use Nagare-logger for production"
	self isDebugging ifFalse: [^self].
	Transcript cr; show: 'ERROR:', record asString