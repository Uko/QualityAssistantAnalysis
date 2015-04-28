as yet unclassified
unmarshalLines: lines
	
	^ self unmarshalArrays: (
		lines collect: [ :line |
			line splitOn: '}†{' ])