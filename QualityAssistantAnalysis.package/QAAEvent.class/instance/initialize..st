accessing
initialize: aDictEvent

	time := aDictEvent at: #timestamp.
	entity := aDictEvent at: #entity.
	obfuscated := aDictEvent at: #obfuscated.