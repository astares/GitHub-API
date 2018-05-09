converting
asJSON
	^ Dictionary new 
		at: 'content' put: self contents;
		yourself