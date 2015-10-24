tests-visitor
testAcceptChannelChangeMessage

	chat changeTo: 'TestChannel'.
	self assert: userList channel equals: 'TestChannel'.
	self assert: userList users isEmpty.