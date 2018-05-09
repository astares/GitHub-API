initialization
fromJSON: json
	url := json at: 'url'.
	forksUrl := json at: 'forks_url'.
	commitsUrl := json at: 'commits_url'.
	id := json at: 'id'.
	description := json at: 'description'.
	public := json at: 'public'.
	owner := json at: 'owner' ifPresent: [ :jsonOwner | GitHubUser fromJSON: jsonOwner ].
	user := json at: 'user'.
	files := (json at: 'files') associations 
		collect: [ :each | GistFile fromName: each key json: each value ].
	truncated := json at: 'truncated'.
	comments := json at: 'comments'.
	commentsUrl := json at: 'comments_url'.
	htmlUrl := json at: 'html_url'.
	gitPullUrl := json at: 'git_pull_url'. 
	gitPushUrl := json at: 'git_push_url'. 
	created := json at: 'created_at'.
	updated := json at: 'updated_at'