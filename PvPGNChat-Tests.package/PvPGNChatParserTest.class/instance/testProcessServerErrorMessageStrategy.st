tests
testProcessServerErrorMessageStrategy

	| message |

	message := '1019 ERROR "That user is not logged on."'.
	message := parser process: message.
	self assert: message class equals: ServerErrorMessage.
	self assert: message content equals: 'That user is not logged on.'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name