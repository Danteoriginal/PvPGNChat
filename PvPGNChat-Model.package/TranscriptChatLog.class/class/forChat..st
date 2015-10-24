instance creation
forChat: aChat

	| instance |

	instance := self new.
	aChat addDependent: instance.
	^ instance