visitor
acceptChannelJoinMessage: aMessage

	showJoinLeave
		ifTrue: [ 
			Transcript
				show: aMessage content;
				show: ' joined the channel.';
				cr ]