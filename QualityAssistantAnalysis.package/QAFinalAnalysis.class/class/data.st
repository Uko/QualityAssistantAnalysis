accessing
data

	^ (QAAnalysisStreamer new filteredEvents
		groupedBy: [ :ev | (ev at: #computerUUID), (ev at: #sessionUUID) ])
		values collect: [ :events |
			QAASession new
				id: (events anyOne at: #sessionUUID);
				computerId: (events anyOne at: #computerUUID);
				update: (((events
					collect: [ :ev | ev at: #latestUpdate ])
					reject: #isNil)
					ifEmpty: nil ifNotEmpty: #min);
				events: ((events
					collect: [ :ev | QAAEvent for: ev ])
					sorted: [ :bfr :aft | bfr time < aft time ]);
				yourself ]