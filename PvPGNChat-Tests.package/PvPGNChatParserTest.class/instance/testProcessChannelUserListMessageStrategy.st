tests
testProcessChannelUserListMessageStrategy

	| message |

	message := '1001 USER Gaf 0010 [CHAT]'.
	message := parser process: message.
	self assert: message class equals: ChannelUserListMessage.
	self assert: message content equals: 'Gaf'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name