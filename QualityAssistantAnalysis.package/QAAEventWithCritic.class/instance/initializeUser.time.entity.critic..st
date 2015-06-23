initialization
initializeUser: aUUID time: millisec entity: selector critic: aString
	super initializeUser: aUUID time: millisec entity: selector.
	critic := aString asClass