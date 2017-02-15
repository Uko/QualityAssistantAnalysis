instance creation
fromDict: aDict

	^ self new
		computer: (aDict at: #computerUUID);
		timestamp: (aDict at: #sessionStartTime);
		imageVersion: (aDict at: #imageVersion);
		imageUpdate: (aDict at: #latestUpdate);
		events: (aDict at: #events);
		yourself