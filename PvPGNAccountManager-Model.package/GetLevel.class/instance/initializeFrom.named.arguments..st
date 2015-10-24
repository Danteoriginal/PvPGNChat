initialize-release
initializeFrom: aMessage named: aCommandName arguments: aString

	| matcher trimmed |

	chat := aMessage origin.
	replyMethod := aMessage accept: self.
	sender := aMessage sender.
	trimmed := aString trimBoth.
	matcher := RxMatcher forString: '([^[:space:]]+)'.
	(matcher matches: trimmed)
		ifFalse: [ self signalInvalidSyntax ].
	user := trimmed