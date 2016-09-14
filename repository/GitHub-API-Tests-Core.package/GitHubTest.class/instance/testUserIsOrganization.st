tests - users
testUserIsOrganization

	self assert: (GitHubUser named: 'pharo-project') isOrganization 