initialize-release
initializeFor: aChat

	chat := aChat.
	messageQueue := SharedQueue new.
	self startMessageSenderProcess.
	aChat addDependent: self