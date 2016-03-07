as yet unclassified
filteredQAAnnouncementsSince: date
	
	^ self allQAAnnouncements
		select: [ :ann |
			ann timestamp > date and: [ 
			 | events |
				events := ann safeUnpackedData.
				events notEmpty and: [ events anyOne isKindOf: QARCriticEvent ] ] ]
		
	