tests - users
testUserIsUnknown

	self 
		should: [ GitHub userNamed: 'SimulatedUnkownUserOnGitHub' ]
		raise: GitHubUserNotAvailable 