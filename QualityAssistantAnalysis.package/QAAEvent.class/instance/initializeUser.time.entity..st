accessing
initializeUser: aUUID time: millisec entity: selector

	uuid := aUUID asInteger.
	time := DateAndTime unixEpoch + (Duration milliSeconds: millisec asInteger).
	entity := selector