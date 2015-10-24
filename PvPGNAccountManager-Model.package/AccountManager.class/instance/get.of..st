private
get: aKey of: aUser

	^ self doExclusive: [ (GetRecordStrategy for: aKey of: aUser) evaluateOn: self ]