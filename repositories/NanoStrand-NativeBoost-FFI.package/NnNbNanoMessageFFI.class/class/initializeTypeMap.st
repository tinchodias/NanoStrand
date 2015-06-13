class-initialization
initializeTypeMap
	"self initializeTypeMap"
	<script>
	
	IntHolderType := (NBExternalTypeValue ofType: 'int').
	StringHolderType := (NBExternalTypeValue ofType: 'char*').
	SizeHolderType := (NBExternalTypeValue ofType: 'size_t').
	PollDescriptorArrayType := (NBExternalArray ofType: 'NnNbPollDescriptor').