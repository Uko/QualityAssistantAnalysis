as yet unclassified
removeDuplicates
	| duplicates |
	duplicates := OrderedCollection new.

	self bySession valuesDo: [ :sessionEvents |
		sessionEvents sort: [ :a :b | a time < b time ].
		sessionEvents allButFirst withIndexDo: [ :event :index |
			| prevEvent |
			prevEvent := sessionEvents at: index.
			((event similar: prevEvent) and:
			[ event time - prevEvent time < 500 milliSeconds ]) ifTrue: [ 
				events remove: prevEvent ] ] ].
		
	^ duplicates