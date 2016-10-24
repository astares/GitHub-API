converting
asJSONForUpdate
	^ Dictionary new
		at: 'description' put: self description;
		at: 'files' put: (self files collect: [ :each | 
			(each name ifNil: [ '' ]) -> each asJSON ]) asDictionary;
		yourself