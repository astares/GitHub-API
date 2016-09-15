versions
dev: spec
	<version: 'dev'>

	spec for: #'common' do: [ 
		spec blessing: #'development'.
		spec
			baseline: 'Voyage' with: [ 
				spec 
					className: 'BaselineOfGitHubAPI';
					repository: 'github://astares/GitHub-API:master/repository' ]].