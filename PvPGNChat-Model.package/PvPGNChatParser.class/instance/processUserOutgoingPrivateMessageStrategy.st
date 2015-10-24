message processing - private
processUserOutgoingPrivateMessageStrategy

	^ [ :aString | 
	| matcher message user |

	matcher := self userCodeMessageMatcherFor: aString.
	matcher matches: aString.
	user := matcher subexpression: 2.
	message := matcher subexpression: 4.
	UserOutgoingPrivateMessage from: chat sentBy: user containing: message ]