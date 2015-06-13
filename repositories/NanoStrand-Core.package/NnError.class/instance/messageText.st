accessing
messageText
	| txt |
	txt := super messageText ifEmpty: [self errorString].
	^txt