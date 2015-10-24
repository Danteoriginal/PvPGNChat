testing
isNamed: aCommandName

	^ (self commandAliases asOrderedCollection
		addFirst: self commandName;
		yourself) anySatisfy: [ :cmd | cmd asUppercase = aCommandName asUppercase ]