private
set: aKey of: aUser to: aValue

	^ self doExclusive: [ (SetRecordStrategy for: aKey of: aUser setTo: aValue) evaluateOn: self ]