evaluation
evaluateOn: anAccountManager

	| request |

	request := '/set {1} {2}' format: (Array with: user with: key).
	^ self ask: anAccountManager toResolve: request