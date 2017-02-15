accessing
banPairs: events

	^ events
		detectPairsOf: [ :ev |
			(ev at: #class) = #QAInitiateCritiqueBan ]
		and: [ :ev1 :ev2 |
			((ev2 at: #class) = #ReCritiqueBanned) and: [ 
			 (ev1 at: #entity) = (ev2 at: #entity) ] ]
		ommit: [ :ev1 :ev2 |
			((ev2 at: #class) = #QAInitiateCritiqueBan) and: [ 
			 (ev1 at: #entity) = (ev2 at: #entity) ] ]