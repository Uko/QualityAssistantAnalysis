initialization
initialize: aDictEvent

	super initialize: aDictEvent.
	critiques := aDictEvent at: #critiques ifAbsent: [ aDictEvent at: #critics ]