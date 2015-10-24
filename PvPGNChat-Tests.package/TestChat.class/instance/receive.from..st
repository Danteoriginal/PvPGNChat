messaging protocol
receive: message from: user

	self changed: (UserPrivateMessage from: self sentBy: self sender containing: message)