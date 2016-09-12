as yet unclassified
ensureLink
	<script>
	self removeLink.
	(GTEventUnpacking >>#unpackDirectory:) ast nodesDo: [ :node |
		(node isMessage and: [
		 node selector = #collect:thenSelect: ]) ifTrue: [ 
			node link: self link ] ]