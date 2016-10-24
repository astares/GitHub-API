accessing gists
gists
	"Return the gists of the receiver"
	"Return the gists"
	|reader|
	reader :=  GitHubReader read: 'gists' forUser: self name.
	^ reader ston collect: [ :each | (Gist fromJSON: each) requestingUser: self ]