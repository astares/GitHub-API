baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
				spec package: 'GitHub-API-Core'.
				spec package: 'GitHub-API-Gists' with: [ spec requires: #('GitHub-API-Core') ]..
				spec package: 'GitHub-API-Tests-Core' with: [ spec requires: #('GitHub-API-Core') ].
				spec
					group: 'Core' with: #('GitHub-API-Core' 'GitHub-API-Gists');
					group: 'Tests' with: #('GitHub-API-Tests-Core');		
					group: 'all' with: #('Core' 'Tests');							 
					group: 'default' with: #('all')
	]