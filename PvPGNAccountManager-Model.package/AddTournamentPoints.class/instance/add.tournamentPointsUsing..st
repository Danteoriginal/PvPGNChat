running
add: anAmount tournamentPointsUsing: anAccountManager

	| current |

	current := self get: self type torunamentPointsUsing: anAccountManager.
	anAccountManager
		set: ('Record\Tournament\\{1}' format: (Array with: self type))
		of: user
		to: (current + anAmount) printString.
	^ current