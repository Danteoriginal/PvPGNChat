tests
testProcessServerInfoMessageStrategy

	| message |

	message := '1018 INFO "Gaf, bienvenido al Ombuserver! PvPGN 1.99.0-SVN."'.
	message := parser process: message.
	self assert: message class equals: ServerInfoMessage.
	self assert: message content equals: 'Gaf, bienvenido al Ombuserver! PvPGN 1.99.0-SVN.'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name