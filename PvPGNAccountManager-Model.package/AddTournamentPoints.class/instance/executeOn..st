running
executeOn: aCommandReader

	| current accountManager |

	accountManager := aCommandReader accountManager.
	self ensureLevel1OrMoreUsing: accountManager.
	current := self add: amount tournamentPointsUsing: accountManager.
	replyMethod
		value:
			('{1}''s {2} tournament points were increased from {3} to {4}'
				format:
					(Array
						with: user
						with: self type
						with: current printString
						with: (current + amount) printString)).
	self increaseRankIfNecessaryDueTo: current using: accountManager