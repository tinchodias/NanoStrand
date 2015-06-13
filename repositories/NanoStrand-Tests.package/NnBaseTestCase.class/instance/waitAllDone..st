private
waitAllDone: nodeCount
	nodeCount-1 timesRepeat: [semaphore wait].
	semaphore waitTimeoutSeconds: 2