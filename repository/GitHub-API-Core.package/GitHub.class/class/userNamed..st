accessing
userNamed: aUserName 
	"Return the GitHub user with the given name"
	
	|reader user|
	reader :=  GitHubReader readURL: 'https://api.github.com/users/', aUserName.
	reader contentWasNotFound ifTrue: [ self signalUnknownUser: aUserName ].
	
	"Read the user"
	user := GitHubUser new.
	user name: aUserName.
	user avatarURL: (reader keyOrEmptyStringAt: 'avatar_url').
	user type: (reader keyOrEmptyStringAt: 'type').
	^user
		
 