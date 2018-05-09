accessing
addFile: aGistFile
	files ifNil: [ files := #() ].
	files := files copyWith: aGistFile