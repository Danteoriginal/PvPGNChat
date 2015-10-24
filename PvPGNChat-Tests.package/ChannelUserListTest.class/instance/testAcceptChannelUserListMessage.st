tests-visitor
testAcceptChannelUserListMessage

	chat sendMessage: (ChannelUserListMessage from: chat indicatingChannelPresenceOf: 'TestUser').
	self assert: (userList users includes: 'TestUser').