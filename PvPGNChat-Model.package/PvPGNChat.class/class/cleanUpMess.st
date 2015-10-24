developement help messages
cleanUpMess

	self allInstances
		do: [ :chat | 
			chat finalize.
			chat dependents
				do: [ :dep | 
					chat removeDependent: dep.
					dep finalize ] ].
	(Process allInstances select: [ :p | p name = 'PvPGN Chat Listener' or: [ p name = 'Command executing process' ] ])
		do: [ :p | p terminate ].	"Socket allInstances do: [ :s | s closeAndDestroy ]."
	SmalltalkImage current
		garbageCollect;
		garbageCollectMost