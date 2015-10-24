visitor
acceptChannelLeaveMessage: aMessage

	showJoinLeave
		ifTrue: [ 
			Transcript
				show: aMessage content;
				show: ' left the channel.';
				cr ]