message processing - private
processServerErrorMessageStrategy

	^ [ :aString | 
	| matcher |

	matcher := self quotedMessageMatcher.
	matcher matches: aString.
	ServerErrorMessage from: chat containing: (matcher subexpression: 2) ]