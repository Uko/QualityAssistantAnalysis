initialization
initialize: aDictEvent

	super initialize: aDictEvent.
	critique := aDictEvent at: #critique ifAbsent: [ aDictEvent at: #critic ]