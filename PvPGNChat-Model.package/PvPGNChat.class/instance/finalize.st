finalization
finalize

	self
		disconnect;
		endListenerProcess.
	socket isNil
		ifFalse: [ socket destroy ].
	super finalize