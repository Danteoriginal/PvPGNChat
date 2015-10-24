tests
testProcessUserOutgoingPrivateMessageStrategy

	| message |

	message := '1010 WHISPER username 0000 "<message>"'.
	message := parser process: message.
	self assert: message class equals: UserOutgoingPrivateMessage.
	self assert: message content equals: '<message>'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'username'.
	message := '1010 WHISPER your friends 0000 "<message>"'.
	message := parser process: message.
	self assert: message class equals: UserOutgoingPrivateMessage.
	self assert: message content equals: '<message>'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'your friends'