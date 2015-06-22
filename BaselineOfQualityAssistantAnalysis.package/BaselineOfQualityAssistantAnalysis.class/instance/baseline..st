as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'QualityAssistantAnalysis' with: [ spec requires: 'Roassal2' ].
			
		spec
			project: 'Roassal2'
			with: [ 
				spec
				className: 'ConfigurationOfRoassal2';
				version: '1.11';
				repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ] ]