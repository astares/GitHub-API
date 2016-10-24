initialization
fromName: aString json: json
	name := aString.
	size := json at: 'size'.
	rawUrl := json at: 'raw_url'.
	type := json at: 'type'.
	truncated := json at: 'truncated' ifAbsent: [ false ].
	language := json at: 'language'	
