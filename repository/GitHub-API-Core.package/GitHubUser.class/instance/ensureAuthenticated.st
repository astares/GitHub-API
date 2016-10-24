private
ensureAuthenticated
	self password ifNil: [ self error: 'User needs to be authenticated!' ]