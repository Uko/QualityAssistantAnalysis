accessing
doesNotUnderstand: aMessage
	(aMessage selector beginsWith: 'all') ifTrue: [ 
		^ self data
			collect: [ :ses | ses ->
				(self
					perform: ((aMessage selector allButFirst: 3) uncapitalized, ':') asSymbol
					with: (ses at: #events)) ]
			thenReject: [ :as | as value isEmpty ] ].
		
	^ super doesNotUnderstand: aMessage 