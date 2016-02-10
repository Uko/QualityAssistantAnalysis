*qualityAssistantAnalysis
asQARArray

	^ super asQARArray, { critics asOrderedCollection joinUsing: ' ' }