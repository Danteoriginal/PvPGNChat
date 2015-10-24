tests-chat interaction
testGetLevelFor

	| chat mgr |

	chat := TestChat new.
	mgr := AccountManager forChat: chat.
	self assert: (mgr getLevelFor: 'TestUser') equals: 0.
	self assert: (mgr getLevelFor: 'TestUser2') equals: 2