debugging
logger
	"Use Nagare-logger for production"
	^logger ifNil: [logger := NnLogger]