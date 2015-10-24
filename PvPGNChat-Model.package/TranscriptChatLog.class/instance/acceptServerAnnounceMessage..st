visitor
acceptServerAnnounceMessage: aMessage

	Transcript
		show: 'ANN (';
		show: aMessage sender;
		show: '): ';
		show: aMessage content;
		cr