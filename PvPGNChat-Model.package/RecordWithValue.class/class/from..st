instance creation
from: aString

	| matcher |

	matcher := RxMatcher forString: 'current value of (.*) is "(.*)"'.
	matcher matches: aString.
	^ self new initializeForKey: (matcher subexpression: 2) withContent: (matcher subexpression: 3)