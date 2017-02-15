*QualityAssistantAnalysis
detect: aBlock startingAt: index abortIf: abortBlock whenFound: actionBlock

	index to: self size do: [ :i | | el |
		el := self at: i.
		(abortBlock value: el) ifTrue: [ ^ nil ].
		(aBlock value: el) ifTrue: [ ^ actionBlock value: el  ] ].
	
	^ nil