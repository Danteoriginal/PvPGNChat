message processing - private
processChannelLeaveMessageStrategy

	^ [ :aString | 
	| matcher user |

	matcher := self userCodeMatcher.
	matcher matches: aString.
	user := matcher subexpression: 2.
	ChannelLeaveMessage from: chat indicatingChannelLeftOf: user ]