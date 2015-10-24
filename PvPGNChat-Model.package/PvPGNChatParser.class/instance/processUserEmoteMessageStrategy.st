message processing - private
processUserEmoteMessageStrategy

	^ [ :aString | 
	| matcher message user |

	matcher := self userCodeMessageMatcherFor: aString.
	matcher matches: aString.
	user := matcher subexpression: 2.
	message := matcher subexpression: 4.
	UserEmoteMessage from: chat sentBy: user containing: message ]