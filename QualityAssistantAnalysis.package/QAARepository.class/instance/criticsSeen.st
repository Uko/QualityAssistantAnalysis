scripts
criticsSeen

	^ (self byType at: QAACriticsSeenEvent) 
		flatCollect: #critics