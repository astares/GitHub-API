printing
printOn: aStream

	aStream 
		nextPutAll: self userName;
		space;
		nextPut: $-;
		space;
		nextPutAll: self name 