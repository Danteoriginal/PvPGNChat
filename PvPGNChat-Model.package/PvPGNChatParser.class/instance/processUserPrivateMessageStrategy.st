message processing - private
processUserPrivateMessageStrategy

	^ [ :aString | 
	| matcher message user |

	matcher := self userCodeMessageMatcherFor: aString.
	matcher matches: aString.
	user := matcher subexpression: 2.
	message := matcher subexpression: 4.
	UserPrivateMessage from: chat sentBy: user containing: message ]