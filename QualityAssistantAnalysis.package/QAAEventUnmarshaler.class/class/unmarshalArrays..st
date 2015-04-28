as yet unclassified
unmarshalArrays: arrayOfArrays
	| result |
	result := OrderedCollection new.
	
	arrayOfArrays do: [ :array |
		[  result add: (self
				perform: (self relations at: array third)
				with: array) ]
			on: Error
			do: [  ] ].
		
	^ result