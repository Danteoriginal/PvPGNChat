message processing - private
processGenericMessageStrategy

	^ [ :aString | UnknownMessage from: chat containing: aString trimBoth ]