writing
raw: aString
	"writes unescaped string content"

	aString size > 0
		ifTrue: [
			self
				newStringMarkup;
				nextPutAll: aString]