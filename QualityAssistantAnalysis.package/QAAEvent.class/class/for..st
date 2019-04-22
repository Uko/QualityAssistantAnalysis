instance creation
for: aDictEvent
	| class |
	
	class := aDictEvent at: #class.
	
	(#(#QACriticsSeen #QACritiquesSeen) includes: class) ifTrue: [ 
		^ QAACritiquesSeenEvent new initialize: aDictEvent; yourself ].
	
	(#(#ReCriticDescriptionViewed #ReCritiqueDescriptionViewed) includes: class) ifTrue: [
		^ QAADescriptionViewedEvent new initialize: aDictEvent; yourself ].
	
	(#(#QACritiqueClickedOn #QACriticClickedOn) includes: class) ifTrue: [
		^ QAACritiqueClickedEvent new initialize: aDictEvent; yourself ].
	
	(#(#ReCritiqueBanned #ReCriticBanned) includes: class) ifTrue: [
		^ QAABannedEvent new initialize: aDictEvent; yourself ].
	
	(#(#QAInitiateCritiqueBan #QAInitiateCriticBan) includes: class) ifTrue: [
		^ QAABanInitiatedEvent new initialize: aDictEvent; yourself ].
	
	(#(#ReCriticAutofixed #ReCritiqueAutofixed) includes: class) ifTrue: [
		^ QAAAutofixEvent new initialize: aDictEvent; yourself ].
	
	(#(#QAViewedDiff) includes: class) ifTrue: [
		^ QAADiffSeenEvent new initialize: aDictEvent; yourself ].
	
	
	Error signal: 'shouldn''t happen'.