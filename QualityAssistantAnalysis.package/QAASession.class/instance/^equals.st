accessing
= other

	
	^ self class = other class and: [
		id = other id and: [
		computerId = other computerUUID ] ]