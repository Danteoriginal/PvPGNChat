message processing - private
processChannelChangeMessageStrategy

	^ [ :aString | ChannelChangeMessage from: chat channel: (aString trimBoth: [ :c | c = $" ]) ]