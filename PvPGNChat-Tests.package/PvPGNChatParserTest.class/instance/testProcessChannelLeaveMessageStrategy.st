tests
testProcessChannelLeaveMessageStrategy

	| message |

	message := '1003 LEAVE Stack_Overflow 0000'.
	message := parser process: message.
	self assert: message class equals: ChannelLeaveMessage .
	self assert: message content equals: 'Stack_Overflow'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name