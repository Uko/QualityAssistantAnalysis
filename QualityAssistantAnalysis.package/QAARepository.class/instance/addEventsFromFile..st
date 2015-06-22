accessing
addEventsFromFile: aFile

	self addEvents: (QAAEventUnmarshaler unmarshalFile: aFile)