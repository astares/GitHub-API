private - utilities
signalUnknownUser: aUserName
	GitHubUserNotAvailable
		signal: 'User ' , aUserName , ' not found on GitHub'