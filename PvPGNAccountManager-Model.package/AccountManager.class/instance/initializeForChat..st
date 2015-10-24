initialize-release
initializeForChat: aChat

	chat := aChat.
	messageQueue := SharedQueue new.
	mutex := Semaphore forMutualExclusion.
	aChat addDependent: self