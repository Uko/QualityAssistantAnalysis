scripts
duplicates
	| duplicates |
	duplicates := OrderedCollection new.

	self bySession valuesDo: [ :sessionEvents |
		"sessionEvents sort: [ :a :b | a time < b time ]."
		sessionEvents allButFirst withIndexDo: [ :event :index |
			| prevEvent |
			prevEvent := sessionEvents at: index.
			(event similar: prevEvent) ifTrue: [ 
				duplicates add: event -> prevEvent ] ] ].
		
	^ duplicates