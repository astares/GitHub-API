testing
isUser
	"Return true if the user is a user (and not an organization)"

	^self type = 'User'