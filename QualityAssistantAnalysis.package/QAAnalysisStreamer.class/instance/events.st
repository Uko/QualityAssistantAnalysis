as yet unclassified
events

	| events |

	events := OrderedCollection new.

	self announcementsDo: [ :ann |
			ann safeUnpackedData do: [ :evt |
				evt
					at: #sessionUUID put: ann sessionUUID;
					at: #computerUUID put: ann computerUUID.
				events add: evt ] ]
	