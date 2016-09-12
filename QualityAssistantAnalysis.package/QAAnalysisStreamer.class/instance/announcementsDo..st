as yet unclassified
announcementsDo: aBlock

	| announcements |
	announcements := PluggableSet new
    	equalBlock: [ :an1 :an2 |
        an1 dictionary = an2 dictionary ];
    	hashBlock: [ :an | an dictionary hash ];
    	yourself.
	
	(GTEventTool default unpackAll: 'gt/events/qualityAssistantEvents') key
		do: [ :ann |
			(announcements includes: ann) ifFalse: [ 
				announcements add: ann.
				aBlock value: ann ] ]
		displayingProgress: 'Iterating announcements'.