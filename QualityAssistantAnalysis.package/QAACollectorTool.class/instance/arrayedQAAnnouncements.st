as yet unclassified
arrayedQAAnnouncements
	
	^ self filteredQAAnnouncements flatCollect: [ :ann |
		ann unpackedData collect: [ :evt |
			{ ann computerUUID asString . ann sessionUUID asString },
			evt asQARArray ] ]