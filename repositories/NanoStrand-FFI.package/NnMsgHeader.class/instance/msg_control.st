accessing - structure variables
msg_control
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MSG_CONTROL) type: ExternalType void asPointerType