tests
testProcessUserEmoteMessageStrategy

	| message |

	message := '1023 EMOTE Stack_Overflow 0000 "test message"'.
	message := parser process: message.
	self assert: message class equals: UserEmoteMessage.
	self assert: message content equals: 'test message'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'Stack_Overflow'