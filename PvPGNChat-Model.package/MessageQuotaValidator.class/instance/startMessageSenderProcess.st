initialize-release
startMessageSenderProcess

	| messageToSend |

	quotaExceeded := false.
	semaphore := Semaphore new.
	process := [ 
	messageToSend := messageQueue next.
	messageToSend value.
	[ true ]
		whileTrue: [ 
			[ 
			quotaExceeded
				ifTrue: [ 
					semaphore wait.
					quotaExceeded := false ]
				ifFalse: [ messageToSend := messageQueue next ].
			messageToSend value.
			(Delay forMilliseconds: 100) wait ]
				on: NetworkError
				do: [ :ex | ex retry ] ] ] forkAt: Processor systemBackgroundPriority named: 'MessageQuotaValidator Process'