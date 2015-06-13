private
getErrorStringAt: errorCode
	^[NnPortableUtil default ffi getErrorStringAt: errorCode] on: Error do: [:ex | ex return:'']