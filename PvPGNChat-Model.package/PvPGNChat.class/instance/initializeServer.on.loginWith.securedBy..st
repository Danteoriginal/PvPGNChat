initialization
initializeServer: anAddress on: aPort loginWith: aUsername securedBy: aPassword

	server := anAddress.
	port := aPort.
	loginName := aUsername.
	password := aPassword.
	parser := PvPGNChatParser for: self.
	shouldStopListenerProcess := false.
	self setDisconnectedStatus