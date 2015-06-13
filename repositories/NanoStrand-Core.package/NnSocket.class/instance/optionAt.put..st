options-raw
optionAt: optionSymbol put: value
	^ffi setSocketOption: optionSymbol to: value at: descriptor