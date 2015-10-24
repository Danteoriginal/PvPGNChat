tests
testProcessChannelJoinMessageStrategy

	| message |

	message := '1002 JOIN Supp0rt 0000 [W3XP]'.
	message := parser process: message.
	self assert: message class equals: ChannelJoinMessage.
	self assert: message content equals: 'Supp0rt'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name