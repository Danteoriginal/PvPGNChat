messaging protocol
receiveEmote: message

	self changed: (UserEmoteMessage from: self sentBy: self sender containing: message)