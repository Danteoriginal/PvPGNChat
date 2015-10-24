message processing - private
processChannelJoinMessageStrategy

	^ [ :aString | 
	| matcher user |

	matcher := self userCodeMatcher.
	matcher matches: aString.
	user := matcher subexpression: 2.
	ChannelJoinMessage from: chat indicatingChannelJoinOf: user ]