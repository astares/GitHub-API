accessing gists
removeGistById: id
	| response |
	self ensureAuthenticated.
	response := ZnClient new 
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		username: self name password: self password; 
		url: 'https://api.github.com/gists/', id;
		delete;
		response.
	response isSuccess ifFalse: [ self error: 'Could not delete gist !' ].