visitor
acceptUserStatusUpdateMessage: aMessage

	showJoinLeave
		ifTrue: [ 
			Transcript
				show: aMessage content;
				show: ' is in the channel.';
				cr ]