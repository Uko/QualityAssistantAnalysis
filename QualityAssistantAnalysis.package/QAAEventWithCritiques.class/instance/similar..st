comparing
similar: otherEvent
	^ (super similar: otherEvent) and: [ 
		self critics = otherEvent critics ]