start/stop
startWithSockets: nnSockets

	self setupWithSockets: nnSockets.

	"Start a timer-based periodic loop"
	self setupLoopProcess