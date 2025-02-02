class-initialization
initialize

	IntHolderType := (FFIExternalValueHolder ofType: 'int').
	StringHolderType := (FFIExternalValueHolder ofType: 'char*').
	SizeHolderType := (FFIExternalValueHolder ofType: 'size_t').
	PollDescriptorArrayType := (FFIExternalValueHolder ofType: NnPollDescriptor).

	IntSize := FFIExternalType sizeOf: 'int'