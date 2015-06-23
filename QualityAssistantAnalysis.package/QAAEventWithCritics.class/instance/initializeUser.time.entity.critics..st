initialization
initializeUser: aUUID time: millisec entity: selector critics: aString
	super initializeUser: aUUID time: millisec entity: selector.
	critics := (aString substrings: ' ') collect: #asClass