visitor
acceptChannelChangeMessage: aMessage

	Transcript
		show: 'You are now in channel: ';
		show: aMessage content;
		cr