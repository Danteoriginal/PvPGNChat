initialize-release
commandsStartedWith: aCharacter using: anAccountManager

	chat := anAccountManager chat.
	commandTrigger := aCharacter.
	accountManager := anAccountManager.
	mutex := Semaphore forMutualExclusion.
	chat addDependent: self