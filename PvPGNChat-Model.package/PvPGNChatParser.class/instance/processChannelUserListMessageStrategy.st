message processing - private
processChannelUserListMessageStrategy

	^ [ :aString | 
	| matcher user |

	matcher := self userCodeMatcher.
	matcher matches: aString.
	user := matcher subexpression: 2.
	ChannelUserListMessage from: chat indicatingChannelPresenceOf: user ]