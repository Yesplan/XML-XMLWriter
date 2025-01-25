class initialization
initializeContentNonEntityEscapes
	(ContentNonEntityEscapes := ContentEscapes copy)
		at: $& asciiValue
		put: nil