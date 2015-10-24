evaluation
evaluateOn: anAccountManager

	| request |

	request := '/set {1} {2} {3}' format: (Array with: user with: key with: value).
	^ self ask: anAccountManager toResolve: request