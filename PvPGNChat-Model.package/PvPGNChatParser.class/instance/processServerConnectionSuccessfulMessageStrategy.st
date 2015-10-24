message processing - private
processServerConnectionSuccessfulMessageStrategy

	^ [ :aString | ServerConnectionSuccessfulMessage from: chat containing: aString ]