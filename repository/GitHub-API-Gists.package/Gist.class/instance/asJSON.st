converting
asJSON
	^ Dictionary new
		at: 'description' put: self description;
		at: 'public' put: self isPublic;
		at: 'files' put: (self files collect: [ :each | 
			(each name ifNil: ['']) -> each asJSON ]) asDictionary;
		yourself