actions
stopAndCloseSockets

	self stop.
	[ self closeSockets ] forkAt: Processor userBackgroundPriority