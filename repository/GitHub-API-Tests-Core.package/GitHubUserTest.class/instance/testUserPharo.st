tests - users
testUserPharo

	| user |
	user := GitHubUser named: 'pharo-project'.
	self 
		assert: user name equals: 'pharo-project';
		assert: user avatarURL equals: 'https://avatars.githubusercontent.com/u/1838382?v=3'
	