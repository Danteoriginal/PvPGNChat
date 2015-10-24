message processing - private
processServerAnnounceMessageStrategy

	^ [ :aString | 
	| matcher message user |

	matcher := RxMatcher forString: '"Announcement from (.*)\: (.*)"'.
	matcher matches: aString.
	message := matcher subexpression: 3.
	user := matcher subexpression: 2.
	ServerAnnounceMessage from: chat sentBy: user containing: message ]