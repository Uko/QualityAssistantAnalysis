scripts
criticsFixedByNumber

	^ (((self criticsFixed)
		groupedBy: #yourself)
		collect: #size)
		associations sorted: [ :a :b | a value > b value ]