accessing
gistsForUser: aUserName
	"Return the repositories"

	| reader |
	reader := GitHubReader readURL: 'https://api.github.com/users/' , aUserName , '/gists'.
	reader contentWasNotFound ifTrue: [ self signalUnknownUser: aUserName ].
	^ reader ston collect: [ :each | 
		GitHubGist new 
			name: (each at: 'description');
			files: ((each at: 'files') 
				collect: [:file |
						GitHubFile new 
							name: (file at: 'filename');
							url: (file at: 'raw_url');
							type: (file at: 'type');
							yourself 
					
				])
		yourself ]