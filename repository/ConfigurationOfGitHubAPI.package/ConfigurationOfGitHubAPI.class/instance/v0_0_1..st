versions
v0_0_1: spec
	<version: '0.0.1'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'GitHubAPI' with: [ 
				spec 
					className: 'BaselineOfGitHubAPI';
					repository: 'github://astares/GitHub-API:0.0.1/repository' ]]