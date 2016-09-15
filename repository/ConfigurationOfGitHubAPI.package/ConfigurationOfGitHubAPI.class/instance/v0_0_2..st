versions
v0_0_2: spec
	<version: '0.0.2'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'GitHubAPI' with: [ 
				spec 
					className: 'BaselineOfGitHubAPI';
					repository: 'github://astares/GitHub-API:0.0.2/repository' ]]