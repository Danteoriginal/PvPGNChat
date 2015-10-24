messaging protocol
send: message to: user

	self changed: (UserPrivateMessage from: self sentBy: self sender containing: message)