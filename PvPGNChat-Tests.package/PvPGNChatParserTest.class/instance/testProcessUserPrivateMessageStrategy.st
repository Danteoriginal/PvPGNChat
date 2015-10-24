tests
testProcessUserPrivateMessageStrategy

	| message |

	message := '1004 WHISPER Stack_Overflow 0004 "contenido del mensaje"'.
	message := parser process: message.
	self assert: message class equals: UserPrivateMessage.
	self assert: message content equals: 'contenido del mensaje'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'Stack_Overflow'