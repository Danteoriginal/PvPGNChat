visitor
acceptServerErrorMessage: aMessage

	(PvPGNErrorMessage buildFrom: aMessage content) accept: self