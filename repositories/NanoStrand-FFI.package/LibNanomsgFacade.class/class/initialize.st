class-initialization
initialize

	IntHolderType := (FFIExternalValueHolder ofType: 'int').
	StringHolderType := (FFIExternalValueHolder ofType: 'char*').
	SizeHolderType := (FFIExternalValueHolder ofType: 'size_t').
	IntSize := FFIExternalType sizeOf: 'int'