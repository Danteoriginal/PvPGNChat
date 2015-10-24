chat
send: aString to: aUser

	self send: ('/w {1} {2}' format: (Array with: aUser with: aString))