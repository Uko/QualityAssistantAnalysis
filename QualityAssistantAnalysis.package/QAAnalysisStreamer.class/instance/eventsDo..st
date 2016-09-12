as yet unclassified
eventsDo: aBlock


	self announcementsDo: [ :ann |
			ann safeUnpackedData do: [ :evt |
				evt
					at: #sessionUUID put: ann sessionUUID;
					at: #computerUUID put: ann computerUUID.
				aBlock value: evt ]
			displayingProgress: 'Crunching events' ]
	