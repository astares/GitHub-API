accessing
read: what forUser: userName
	| reader | 
	reader := self readURL: 'https://api.github.com/users/', userName , '/', what.
	reader contentWasNotFound
		ifTrue: [ GitHubUserNotAvailable signal: 'User ', userName ,' not found on GitHub!' ].
	^ reader