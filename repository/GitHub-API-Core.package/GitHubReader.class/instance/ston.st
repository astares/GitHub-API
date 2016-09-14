private - accessing
ston

	ston ifNil: [ ston := STON fromString: response contents ].
	^ston