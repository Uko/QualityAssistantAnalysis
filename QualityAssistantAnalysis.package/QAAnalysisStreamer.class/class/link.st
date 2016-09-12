as yet unclassified
link

	^ link ifNil: [ link := 
		MetaLink new
			metaObject: [ :receiver :node :params |
				'Progressing in ', node methodNode compiledMethod name
					displayProgressFrom: 0 
					to: receiver size
					during: [:bar |
						| count |
						count := 0.
						receiver perform: node selector withArguments: {[ :item |
							count := count + 1.
							bar value: count.
							params first value: item. ]}, params allButFirst ] ];
			selector: #value:value:value:;
  	 	   arguments: #(receiver node arguments);
  	 	   control: #instead;
			yourself ]