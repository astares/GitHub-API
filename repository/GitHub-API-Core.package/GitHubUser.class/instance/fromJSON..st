initialization
fromJSON: json
	name := json at: 'login'.
	avatarURL := json at: 'avatar_url'.
	type := json at: 'type'