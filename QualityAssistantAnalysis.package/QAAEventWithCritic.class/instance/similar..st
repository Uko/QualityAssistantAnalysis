comparing
similar: otherEvent
	^ (super similar: otherEvent) and: [ 
		self critic = otherEvent critic ]