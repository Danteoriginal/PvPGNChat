tests-visitor
testAcceptChannelJoinMessage

	chat sendMessage: (ChannelJoinMessage from: chat indicatingChannelJoinOf: 'TestUser').
	self assert: (userList users includes: 'TestUser').