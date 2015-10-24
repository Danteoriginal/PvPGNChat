message processing - private
processServerInfoMessageStrategy

	^ [ :aString | 
	| matcher |

	matcher := self quotedMessageMatcher.
	matcher matches: aString.
	ServerInfoMessage from: chat containing: (matcher subexpression: 2) ]