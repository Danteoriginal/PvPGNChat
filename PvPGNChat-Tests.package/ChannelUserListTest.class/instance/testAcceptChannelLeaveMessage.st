tests-visitor
testAcceptChannelLeaveMessage

	chat sendMessage: (ChannelJoinMessage from: chat indicatingChannelJoinOf: 'TestUser').
	self assert: (userList users includes: 'TestUser').

	chat sendMessage: (ChannelLeaveMessage from: chat indicatingChannelLeftOf: 'TestUser').
	self deny: (userList users includes: 'TestUser').