accessing
contents
	contents ifNil: [ contents := (ZnEasy get: url) contents ].
	^contents