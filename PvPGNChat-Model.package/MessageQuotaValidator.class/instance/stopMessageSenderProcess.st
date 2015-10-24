initialize-release
stopMessageSenderProcess

	process terminate.
	quotaExceeded := false.
	semaphore := Semaphore new.
	