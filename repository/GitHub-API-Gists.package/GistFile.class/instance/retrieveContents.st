private
retrieveContents
	^ ZnClient new 
		url: self rawUrl;
		get