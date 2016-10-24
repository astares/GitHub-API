accessing gists
updateGist: aGist
	| response |
	self ensureAuthenticated.
	response := ZnClient new 
		headerAt: 'Accept' put: 'application/vnd.github.v3+json';
		username: self name password: self password; 
		url: 'https://api.github.com/gists/', aGist id;
		entity: (ZnEntity text: (STON toJsonString: aGist asJSONForUpdate));
		contentType: ZnMimeType applicationJson;
		patch;
		response.
	response isSuccess ifFalse: [ self error: 'Could not update Gist !' ].
	aGist fromJSON: (STON fromString: response contents)