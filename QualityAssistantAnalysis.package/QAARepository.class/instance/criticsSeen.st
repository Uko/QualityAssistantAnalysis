scripts
criticsSeen

	^ (self byType at: QAACritiquesSeenEvent) 
		flatCollect: #critics