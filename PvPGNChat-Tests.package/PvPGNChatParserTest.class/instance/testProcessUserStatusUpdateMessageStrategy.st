tests
testProcessUserStatusUpdateMessageStrategy

	| message |

	message := '1009 USER Gaf 0010 [CHAT]'.
	message := parser process: message.
	self assert: message class equals: UserStatusUpdateMessage.
	self assert: message content equals: 'Gaf'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name