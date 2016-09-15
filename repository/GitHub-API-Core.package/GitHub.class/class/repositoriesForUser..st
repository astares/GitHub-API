accessing
repositoriesForUser: aUserName 
	"Return the repositories"
	
	|reader|
	reader :=  GitHubReader readURL: 'https://api.github.com/users/', aUserName ,'/repos'.
	reader contentWasNotFound ifTrue: [ self signalUnknownUser: aUserName ].
	^reader ston collect: [:each |
		(GitHubRepository new)
			userName: aUserName;	
			name: (each at: 'name');
			url: (each at: 'url');	
			language: (each at: 'language');
			cloneURL: (each at: 'clone_url');
			gitURL: (each at: 'git_url');
			sshURL: (each at: 'ssh_url');
			yourself
	]
	
 