instance creation
buildFrom: aMessage

	| response |

	response := self allSubclasses detect: [ :class | class represents: aMessage ] ifNone: [ UnknownResponse ].
	^ response from: aMessage 