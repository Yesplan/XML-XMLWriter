writing
string: aString
	"writes XML-escaped string content"

	aString size > 0
		ifTrue: [
			self
				newStringMarkup;
				writeEscapedContent: aString]