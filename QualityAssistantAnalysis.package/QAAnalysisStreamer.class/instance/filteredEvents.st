as yet unclassified
filteredEvents

	| events |

	events := OrderedCollection new.

	self announcementsDo: [ :ann |
			ann safeUnpackedData
				ifNotNil: [ :data | 
					data do: [ :evt |
						((evt includesKey: #timestamp) and: [
						 (evt at: #class) ~= #ReEntityCriticized ]) ifTrue: [  
							evt
								at: #sessionUUID put: ann sessionUUID;
								at: #computerUUID put: ann computerUUID;
								at: #latestUpdate put: ann latestUpdate. 
							events add: evt ] ] ] ].
			
	^ events