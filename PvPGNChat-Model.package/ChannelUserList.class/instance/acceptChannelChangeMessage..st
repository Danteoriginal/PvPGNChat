visitor
acceptChannelChangeMessage: aChannelChangeMessage

	channel := aChannelChangeMessage content.
	users := Set new