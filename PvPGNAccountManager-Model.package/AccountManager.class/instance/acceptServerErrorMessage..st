visitor
acceptServerErrorMessage: aMessage

	| response |

	response := PvPGNErrorMessage buildFrom: aMessage content.
	messageQueue nextPut: response