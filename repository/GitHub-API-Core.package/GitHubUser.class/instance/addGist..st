accessing gists
addGist: aGist
	| response |
	self ensureAuthenticated.
	response := ZnClient new 
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		username: self name password: self password; 
		url: 'https://api.github.com/gists';
		entity: (ZnEntity text: (STON toJsonString: aGist asJSON));
		post;
		response.
	response isSuccess ifFalse: [ self error: 'Could not add Gist !' ].
	aGist fromJSON: (STON fromString: response contents)