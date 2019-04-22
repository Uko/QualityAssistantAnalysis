as yet unclassified
createSkipped: array
	| event |
	event := self create: QAABannedEvent eventWithCritic: array.
	event level: array sixth.
	^ event