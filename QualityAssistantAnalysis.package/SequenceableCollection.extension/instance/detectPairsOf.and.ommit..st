*QualityAssistantAnalysis
detectPairsOf: matchBlock and: approveBlcok ommit: ommitBlock
	| detections |

	detections := OrderedCollection new.

	self withIndexDo: [ :each :index |
		(matchBlock value: each) ifTrue: [
			self
				detect: [ :other | approveBlcok value: each value: other ]
				startingAt: index + 1
				abortIf: [ :other | ommitBlock value: each value: other ]
				whenFound: [ :other | detections add: each -> other ]  ] ].
		
	^ detections asArray 