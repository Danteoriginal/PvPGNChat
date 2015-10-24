instance creation
server: aServerAddress on: aPort loginWith: aUsername securedBy: aPassword

	^ self new
		initializeServer: aServerAddress
		on: aPort
		loginWith: aUsername
		securedBy: aPassword