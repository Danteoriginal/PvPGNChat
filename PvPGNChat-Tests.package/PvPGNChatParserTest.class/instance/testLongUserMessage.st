tests
testLongUserMessage

	| message lotsOfAs |

	lotsOfAs := 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'.
	message := '1005 TALK Stack_Overflow 0000 "' , lotsOfAs.
	message := parser process: message.
	self assert: message class equals: UserMessage.
	self assert: message content equals: lotsOfAs.
	self assert: message origin equals: self.
	self assert: message sender equals: 'Stack_Overflow'