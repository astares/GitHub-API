tests
testSTONAccessibleForUserGistsURL

	| reader |
	reader := GitHubReader readURL: 'https://api.github.com/users/astares/gists'.
	self deny: reader contentWasNotFound