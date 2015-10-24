visitor
acceptUserMessage: aMessage

	Transcript
		show: aMessage sender;
		show: ': ';
		show: aMessage content;
		cr