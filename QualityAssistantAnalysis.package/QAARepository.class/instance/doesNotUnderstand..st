scripts
doesNotUnderstand: aMessage

	(aMessage selector endsWith: #ByNumber) ifTrue: [
		^ self class numberized: (self perform: (aMessage selector allButLast: 8) asSymbol) ].
	(aMessage selector endsWith: #SortedAssociations) ifTrue: [
		^ self class sortAssoc: (self perform: (aMessage selector allButLast: 18) asSymbol) ].
	
	^ super doesNotUnderstand: aMessage
