running
increaseRankIfNecessaryDueTo: score using: accountManager

	| increase rank |

	rank := self rankOf: score + amount.
	increase := (self rankOf: score) < rank
		and: [ (self rankOf: (self get: self oppositeType torunamentPointsUsing: accountManager)) < rank ].
	increase
		ifTrue: [ 
			self increaseRankTo: rank using: accountManager.
			replyMethod value: ('{1}''s gained a new rank' format: (Array with: user)) ]