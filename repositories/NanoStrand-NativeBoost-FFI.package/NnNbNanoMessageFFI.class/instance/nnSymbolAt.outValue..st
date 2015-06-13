actions-raw
nnSymbolAt: index outValue: outValue
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	^ self nbCall: #( String nn_symbol(int index, int* outValue) ) module: #nanomsg