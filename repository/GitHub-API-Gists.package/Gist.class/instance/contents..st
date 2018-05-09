accessing
contents: aString 
	(self files notEmpty and: [ self files size > 1 ])
		ifTrue: [ self error: 'You can not update a gist with multiple files directly.' ].
	self firstFileOrCreate contents: aString