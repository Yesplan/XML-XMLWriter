class initialization
initialize
	"self initialize"

	self
		initializeContentEscapes;
		initializeContentNonEntityEscapes;
		initializeContentStringEscapes;
		initializeContentStringNonEntityEscapes;
		initializeEntityValueEscapes;
		initializeSpaceCharacter