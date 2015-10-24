running
ensureLevel1OrMoreUsing: anAccountManager

	| current |

	current := (anAccountManager get: 'Record\W3XP\solo\level' of: user) asInteger.
	current = 0
		ifTrue: [ anAccountManager set: 'Record\W3XP\solo\level' of: user to: '1' ]