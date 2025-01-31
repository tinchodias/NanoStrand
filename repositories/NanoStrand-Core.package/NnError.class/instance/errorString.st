accessing
errorString

	code isNil ifTrue: [ ^ '' ].
	^ errorString ifNil: [
		errorString :=
			LibNanomsgFacade uniqueInstance getErrorStringAt: code ]