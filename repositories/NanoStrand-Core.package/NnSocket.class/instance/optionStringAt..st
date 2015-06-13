options-raw
optionStringAt: optionSymbol
	^ffi getSocketOptionString: optionSymbol at: descriptor