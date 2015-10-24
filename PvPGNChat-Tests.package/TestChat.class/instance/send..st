messaging protocol
send: message

	message = '/set TestUser Record\W3XP\solo\level'
		ifTrue: [ self changed: (ServerErrorMessage from: self containing: 'value currently not set') ].
	message = '/set TestUser2 Record\W3XP\solo\level'
		ifTrue: [ self changed: (ServerErrorMessage from: self containing: 'current value of Record\W3XP\solo\level is "2"') ]