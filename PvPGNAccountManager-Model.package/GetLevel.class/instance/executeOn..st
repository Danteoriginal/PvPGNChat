running
executeOn: aCommandReader

	[ 
	| level |

	level := aCommandReader accountManager getLevelFor: user.
	replyMethod value: ('{1} level: {2}' format: (Array with: user with: level printString)) ]
		on: ExecutionFailed
		do: [ :ex | replyMethod value: ex messageText ]