scripts
criticsPersistedByNumber

	^ (((self criticsPersisted)
		groupedBy: #yourself)
		collect: #size)
		associations sorted: [ :a :b | a value > b value ]