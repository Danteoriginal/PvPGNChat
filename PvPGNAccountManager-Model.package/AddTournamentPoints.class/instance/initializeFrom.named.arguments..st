initialize-release
initializeFrom: aMessage named: aCommandName arguments: aString

	| matcher trimmed |

	replyMethod := aMessage accept: self.
	chat := aMessage origin.
	sender := aMessage sender.
	trimmed := aString trimBoth.
	matcher := RxMatcher forString: '([^[:space:]]+) ([0-9\-]+)'.
	(matcher matches: trimmed)
		ifFalse: [ self signalInvalidSyntax ].
	user := matcher subexpression: 2.
	amount := (matcher subexpression: 3) asInteger