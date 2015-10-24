visitor
acceptServerErrorMessage: aMessage

	Transcript
		show: 'ERROR: ';
		show: aMessage content;
		cr