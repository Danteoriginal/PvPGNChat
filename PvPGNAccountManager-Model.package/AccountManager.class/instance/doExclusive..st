private
doExclusive: aBlock

	mutex wait.
	^ aBlock
		ensure: [ mutex signal ]