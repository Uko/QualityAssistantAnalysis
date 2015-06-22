scripts
criticsSeenByNumber

	^ ((((self byType at: QAACriticsSeenEvent) 
		flatCollect: #critics)
		groupedBy: #yourself)
		collect: #size)
		associations sorted: [ :a :b | a value > b value ]