as yet unclassified
createSkipped: array
	| event |
	event := self create: QAASkippedEvent eventWithCritic: array.
	event level: array sixth.
	^ event