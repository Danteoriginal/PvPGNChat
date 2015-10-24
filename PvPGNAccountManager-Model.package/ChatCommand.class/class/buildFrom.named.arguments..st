instance creation
buildFrom: sender named: aCommandName arguments: aString

	| command |

	command := self allSubclasses
		detect: [ :class | class isAbstractClass not and: [ class isNamed: aCommandName ] ]
		ifNone: [ UnknownCommand ].
	^ command from: sender named: aCommandName arguments: aString