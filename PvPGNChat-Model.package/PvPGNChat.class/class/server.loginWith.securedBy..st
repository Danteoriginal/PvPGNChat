instance creation
server: aServerAddress loginWith: aUsername securedBy: aPassword

	^ self
		server: aServerAddress
		on: self defaultPort
		loginWith: aUsername
		securedBy: aPassword