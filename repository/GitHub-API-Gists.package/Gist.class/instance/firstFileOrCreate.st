private
firstFileOrCreate
	^ self files 
		ifNotNil: [ self files first ]
		ifNil: [ self addFile: GistFile new ]