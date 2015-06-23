as yet unclassified
removeNonRevalidatingSessinons
	| nonRevalidatingSessinons |
	nonRevalidatingSessinons := (self bySession select: [ :session |
		session noneSatisfy: [ :event |
			event class == QAARevalidatedEvent  ] ]) keys.

	self events removeAllSuchThat: [ :ev | nonRevalidatingSessinons includes: ev uuid  ]