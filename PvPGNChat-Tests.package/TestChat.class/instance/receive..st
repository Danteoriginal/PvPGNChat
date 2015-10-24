messaging protocol
receive: message

	self changed: (UserMessage from: self sentBy: self sender containing: message)