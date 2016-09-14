tests
testUserIsUnknown

	self 
		should: [ GitHubUser named: 'SimulatedUnkownUserOnGitHub' ]
		raise: GitHubUserNotAvailable 