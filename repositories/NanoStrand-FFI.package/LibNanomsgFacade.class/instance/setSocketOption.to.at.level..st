actions
setSocketOption: option to: value at: descriptor level: level

	value isInteger ifTrue: [
		| valuePointer sz |
		valuePointer := self class newIntHolder: value.
		sz := self class intSize.
		^ self
			  setSocketOptionAt: descriptor
			  level: level
			  option: option
			  value: valuePointer
			  size: sz ].
	value isString ifTrue: [
		^ self
			  setSocketOptionAt: descriptor
			  level: level
			  option: option
			  valueString: value
			  size: value size ]