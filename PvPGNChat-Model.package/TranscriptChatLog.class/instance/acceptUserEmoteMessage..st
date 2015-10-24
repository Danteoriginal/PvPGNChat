visitor
acceptUserEmoteMessage: aMessage

	Transcript
		show: '#';
		show: aMessage sender;
		show: '#: ';
		show: aMessage content;
		cr