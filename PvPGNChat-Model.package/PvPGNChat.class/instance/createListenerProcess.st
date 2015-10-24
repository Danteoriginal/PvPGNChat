connection - private
createListenerProcess

	listenerProcess := [ 
	[ shouldStopListenerProcess and: [ socket isConnected not or: [ socket isOtherEndClosed ] ] ]
		whileFalse: [ 
			self receiveDataIfAvailable.
			(Delay forMilliseconds: 50) wait ].
	shouldStopListenerProcess
		ifTrue: [ shouldStopListenerProcess := false ]
		ifFalse: [ 
			self disconnect.
			self setDisconnectedStatus.
			(Delay forSeconds: 15) wait.
			self connect ] ] forkNamed: 'PvPGN Chat Listener'