private
getErrorStringAt: errorCode

	^ [ LibNanomsgFacade uniqueInstance getErrorStringAt: errorCode ]
		  on: Error
		  do: [ :ex | ex return: '' ]