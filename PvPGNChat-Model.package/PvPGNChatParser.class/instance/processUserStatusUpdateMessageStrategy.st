message processing - private
processUserStatusUpdateMessageStrategy

	^ [ :aString | 
	| matcher user  |

	matcher := self userCodeMatcher.
	matcher matches: aString.
	user := matcher subexpression: 2.
	UserStatusUpdateMessage from: chat containing: user ]