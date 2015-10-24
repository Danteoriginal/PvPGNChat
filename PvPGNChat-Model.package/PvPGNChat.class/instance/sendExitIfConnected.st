connection - private
sendExitIfConnected

	(socket isConnected and: [ socket isOtherEndClosed not and: [ socket isValid ] ])
		ifTrue: [ self send: '/exit' ]