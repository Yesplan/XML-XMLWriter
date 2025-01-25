class initialization
initializeContentStringEscapes
	(ContentStringEscapes := Array new: 256)
		at: $& asciiValue put: '&amp;';
		at: $< asciiValue put: '&lt;';
		at: $" asciiValue put: '&quot;';
		at: Character cr asciiValue put: #LineBreak;
		at: Character lf asciiValue put: #LineBreak