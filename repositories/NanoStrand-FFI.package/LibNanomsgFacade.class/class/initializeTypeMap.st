class-initialization
initializeTypeMap
	"self initializeTypeMap"
	<script>

	IntHolderType := (FFIExternalValueHolder ofType: 'int').
	StringHolderType := (FFIExternalValueHolder ofType: 'char*').
	SizeHolderType := (FFIExternalValueHolder ofType: 'size_t').
	PollDescriptorArrayType := (FFIExternalValueHolder ofType: NnPollDescriptor).