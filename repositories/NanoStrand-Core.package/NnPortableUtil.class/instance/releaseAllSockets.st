releasing
releaseAllSockets
	"NnPortableUtil default releaseAllSockets"
	NnSocket
		allSubInstancesDo: [ :each | 
			[ each release ]
				on: Error
				do: [ :ex | Transcript show: 'Error on releasing NnSocket:' , ex descriptiopn asString ] ]