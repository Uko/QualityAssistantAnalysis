as yet unclassified
createRefresh: array

	^ QAARefreshEvent new
		initializeUser: array first
		time: array second
		entity: array fourth