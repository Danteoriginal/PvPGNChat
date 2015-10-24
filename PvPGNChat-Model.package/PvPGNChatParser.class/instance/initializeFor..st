initialization
initializeFor: aPvPGNChat

	chat := aPvPGNChat.
	messageParsingStrategies := Dictionary new
		at: '1001' put: self processChannelUserListMessageStrategy;
		at: '1002' put: self processChannelJoinMessageStrategy;
		at: '1003' put: self processChannelLeaveMessageStrategy;
		at: '1004' put: self processUserPrivateMessageStrategy;
		at: '1005' put: self processUserMessageStrategy;
		at: '1006' put: self processServerAnnounceMessageStrategy;
		at: '1007' put: self processChannelChangeMessageStrategy;
		at: '1009' put: self processUserStatusUpdateMessageStrategy;
		at: '1010' put: self processUserOutgoingPrivateMessageStrategy;
		at: '1018' put: self processServerInfoMessageStrategy;
		at: '1019' put: self processServerErrorMessageStrategy;
		at: '1023' put: self processUserEmoteMessageStrategy;
		at: '2010' put: self processServerConnectionSuccessfulMessageStrategy;
		yourself