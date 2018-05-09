accessing
contents
	^ String streamContents: [ :stream | 
		self files 
			do: [ :each | 
				each name ifNotNil: [ 
					stream print: each name; cr ].
				stream << each contents  ]
			separatedBy: [ stream cr ] ]