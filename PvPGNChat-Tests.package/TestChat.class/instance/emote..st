messaging protocol
emote: message

	self changed: (UserEmoteMessage from: self sentBy: self sender containing: message)