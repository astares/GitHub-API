accessing
readURL: aUrl

	^(self new)
		url: aUrl;
		retrieveContent;
		yourself