tests
testProcessUserMessageStrategy

	| message |

	message := '1005 TALK Stack_Overflow 0000 "contenido del mensaje"'.
	message := parser process: message.
	self assert: message class equals: UserMessage.
	self assert: message content equals: 'contenido del mensaje'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'Stack_Overflow'