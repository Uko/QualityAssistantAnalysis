comparing
similar: otherEvent

	^ self class == otherEvent class and: [ 
	self uuid = otherEvent uuid and: [ 
	self entity = otherEvent entity ] ]