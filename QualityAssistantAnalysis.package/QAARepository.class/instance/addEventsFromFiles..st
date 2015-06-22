accessing
addEventsFromFiles: files

	files do: [ :file |
		self addEventsFromFile: file ]