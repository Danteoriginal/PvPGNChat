connection - private
receiveDataIfAvailable

	socket dataAvailable
		ifTrue: [ 
			(socket receiveData splitOn: Character cr)
				do: [ :line | 
					line trimBoth isEmpty
						ifFalse: [ 
							| message |

							message := parser process: line trimBoth.
							self changed: message ] ] ]