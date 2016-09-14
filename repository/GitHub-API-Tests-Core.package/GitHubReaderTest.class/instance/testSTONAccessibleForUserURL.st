tests
testSTONAccessibleForUserURL

	| reader |
	reader := GitHubReader readURL: 'https://api.github.com/users/astares'.
	self deny: reader contentWasNotFound