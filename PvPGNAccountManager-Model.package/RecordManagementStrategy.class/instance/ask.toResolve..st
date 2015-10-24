private
ask: anAccountManager toResolve: aRequest

	| response |

	anAccountManager chat send: aRequest.
	^ [ 
	response := anAccountManager messageQueue next.
	response accept: self ]
		on: InvalidResponse
		do: [ :ex | ex retry ]