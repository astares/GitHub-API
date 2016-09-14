accessing
keyOrEmptyStringAt: aKey

	^self ston at: aKey ifAbsent: [ String new ]