visitor
acceptQuotaExceededOn: aPvPGNErrorMessage

	quotaExceeded := true.
	[ 
	(Delay forSeconds: 5) wait.
	semaphore signal ] fork