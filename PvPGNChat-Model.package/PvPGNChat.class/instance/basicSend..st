connection - private
basicSend: aString

	Transcript
		show: aString;
		cr.
	[ socket sendCommand: aString ]
		on: NetworkError
		do: [ :ex | 
			self setDisconnectedStatus.
			ex pass ]