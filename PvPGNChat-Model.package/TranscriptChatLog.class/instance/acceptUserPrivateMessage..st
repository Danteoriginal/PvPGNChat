visitor
acceptUserPrivateMessage: aMessage

	Transcript
		show: aMessage sender;
		show: ' whispers: ';
		show: aMessage content;
		cr