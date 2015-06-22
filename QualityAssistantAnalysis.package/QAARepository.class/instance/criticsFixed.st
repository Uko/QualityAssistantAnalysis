scripts
criticsFixed
	| fixedCritics |
	fixedCritics := OrderedCollection new.

	self bySession valuesDo: [ :sessionEvents |
		sessionEvents sort: [ :a :b | a time < b time ].
		sessionEvents withIndexDo: [ :event :index |
			| prevEvent |
			(event class == QAARevalidatedEvent and: [ 
			 index > 1 and: [ 
			(prevEvent := sessionEvents at: index - 1) class = QAACriticsSeenEvent and: [ 
			event entity = prevEvent entity ] ] ]) ifTrue: [ 
				fixedCritics addAll: prevEvent critics \ event critics ] ] ].
		
	^ fixedCritics