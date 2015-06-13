testing
shouldTickReceive
	^super shouldTickReceive and: [self deadlineReached not]
	