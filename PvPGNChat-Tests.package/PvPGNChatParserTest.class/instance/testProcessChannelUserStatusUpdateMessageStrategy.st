tests
testProcessChannelUserStatusUpdateMessageStrategy

	| message |

	message := '1001 USER Stack_Overflow 0000'.	" 1009 indicates user status change, admin status for instance"
	message := parser process: message.
	self assert: message class equals: ChannelUserListMessage.
	self assert: message content equals: 'Stack_Overflow'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name