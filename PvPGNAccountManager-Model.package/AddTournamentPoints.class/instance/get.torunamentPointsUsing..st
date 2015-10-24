running
get: aType torunamentPointsUsing: anAccountManager

	^ (anAccountManager get: ('Record\Tournament\\{1}' format: {aType}) of: user) asInteger