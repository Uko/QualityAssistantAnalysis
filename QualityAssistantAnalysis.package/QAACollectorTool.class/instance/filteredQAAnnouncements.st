as yet unclassified
filteredQAAnnouncements
	
	^ self allQAAnnouncements select: [ :ann |
		[ | events |
			events := ann unpackedData.
			events notEmpty and: [ events anyOne isKindOf: QARCriticEvent ]
		
		] on: Error
		  do: [ false ] ]
	