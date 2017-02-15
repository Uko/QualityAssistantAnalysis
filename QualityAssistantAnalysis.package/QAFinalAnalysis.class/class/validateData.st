as yet unclassified
validateData
	<script>

	self data do: [ :ses |
		self assert: ((ses events) isSortedBy: [ :e1 :e2 |
			(e1 at: #timestamp) <= (e2 at: #timestamp) ]) ].
	
	self inform: 'Data is good'