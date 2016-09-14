tests
testSTONNotAccessibleForUnknownUserURL

	| reader |
	reader := GitHubReader readURL: 'https://api.github.com/users/SimulatedUnkownUserOnGitHub'.
	self assert: reader contentWasNotFound