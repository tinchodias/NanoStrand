accessing
priority

	^ priority ifNil: [
		  priority := self settings defaultPollerProcessPriority ]