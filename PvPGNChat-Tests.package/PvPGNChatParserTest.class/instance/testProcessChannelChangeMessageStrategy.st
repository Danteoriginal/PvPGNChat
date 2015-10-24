tests
testProcessChannelChangeMessageStrategy

	| message |

	message := '1007 CHANNEL "pisa"'.
	message := parser process: message.
	self assert: message class equals: ChannelChangeMessage.
	self assert: message content equals: 'pisa'.
	self assert: message origin equals: self.
	self assert: message sender equals: self name