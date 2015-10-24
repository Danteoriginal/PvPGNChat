tests
testProcessGenericMessageStrategy

	| message |

	message := '0000 UNKNOWN test MESSAGE'.
	message := parser process: message.
	self assert: message class equals: UnknownMessage.
	self assert: message content equals: 'test MESSAGE'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name.
	message := 'hola'.
	message := parser process: message.
	self assert: message class equals: UnknownMessage.
	self assert: message content equals: 'hola'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name