tests
testProcessServerConnectionSuccessfulMessageStrategy

	| message |

	message := '2010 NAME Gaf'.
	message := parser process: message.
	self assert: message class equals: ServerConnectionSuccessfulMessage.
	self assert: message content equals: 'Gaf'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name