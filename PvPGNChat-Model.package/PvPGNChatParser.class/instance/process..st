message handling
process: line

	| matcher messageType message |

	matcher := RxMatcher forString: '(\d\d\d\d) [A-Z_)]+ (.*)'.
	^ (matcher matches: line)
		ifTrue: [ 
			messageType := matcher subexpression: 2.
			message := matcher subexpression: 3.
			(self strategyFor: messageType) value: message ]
		ifFalse: [ UnknownMessage from: chat containing: line ]