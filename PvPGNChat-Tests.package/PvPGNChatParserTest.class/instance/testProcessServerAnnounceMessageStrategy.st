tests
testProcessServerAnnounceMessageStrategy

	| message |

	message := '1006 _ "Announcement from SGG: En vivo Argentina(1) vs Chile(0)"'.
	message := parser process: message.
	self assert: message class equals: ServerAnnounceMessage.
	self assert: message content equals: 'En vivo Argentina(1) vs Chile(0)'.
	self assert: message origin equals: self.
	self assert: message sender equals: 'SGG'