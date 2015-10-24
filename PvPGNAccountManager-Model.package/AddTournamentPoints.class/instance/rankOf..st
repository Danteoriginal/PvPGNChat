running
rankOf: score

	| ranges |

	ranges := self ranks keys asSortedCollection: [ :a :b | a last < b last ].
	^ self ranks at: (ranges detect: [ :range | range includes: score ] ifNone: [ ranges last ])