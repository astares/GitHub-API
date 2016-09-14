tests - type
testUserIsOrganization

	self assert: (GitHubUser named: 'pharo-project') isOrganization 