accessing
userNamed: aString 
	"Return the GitHub user with the given name"
	
	|reader user|
	reader :=  GitHubReader readURL: 'https://api.github.com/users/', aString.
	reader contentWasNotFound ifTrue: [ GitHubUserNotAvailable signal: 'User ',aString,' not found on GitHub' ].
	user := GitHubUser new.
	user name: aString.
	user avatarURL: (reader keyOrEmptyStringAt: 'avatar_url').
	user type: (reader keyOrEmptyStringAt: 'type').
	^user
		
 