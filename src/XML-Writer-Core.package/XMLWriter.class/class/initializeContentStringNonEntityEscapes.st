class initialization
initializeContentStringNonEntityEscapes
	(ContentStringNonEntityEscapes := ContentStringEscapes copy)
		at: $& asciiValue
		put: nil