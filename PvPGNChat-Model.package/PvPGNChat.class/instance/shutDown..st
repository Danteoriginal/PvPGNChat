finalization
shutDown: quitting

	quitting
		ifFalse: [ self finalize ]