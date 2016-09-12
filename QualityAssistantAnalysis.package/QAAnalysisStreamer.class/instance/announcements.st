as yet unclassified
announcements

	^ PluggableSet new
    	equalBlock: [ :an1 :an2 |
        an1 dictionary = an2 dictionary ];
    	hashBlock: [ :an | an dictionary hash ];
    	addAll: (GTEventTool default unpackAll: 'gt/events/qualityAssistantEvents') key;
    	yourself