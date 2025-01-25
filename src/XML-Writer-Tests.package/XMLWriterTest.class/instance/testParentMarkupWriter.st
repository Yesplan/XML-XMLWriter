tests
testParentMarkupWriter
	| writer xmlDeclarationWriter tagWriter |

	writer := XMLWriter new.
	self assert: writer parentMarkupWriter isNil.
	xmlDeclarationWriter := writer xml.
	self
		assert: writer parentMarkupWriter isNil;
		assert: xmlDeclarationWriter parentMarkupWriter isNil;
		assert: (writer parentMarkupWriterOf: xmlDeclarationWriter) isNil.

	tagWriter := writer tag: 'one'.
	self
		assert: writer parentMarkupWriter isNil;
		assert: tagWriter parentMarkupWriter isNil;
		assert: (writer parentMarkupWriterOf: tagWriter) isNil.

	tagWriter with: [| newTagWriter |
		newTagWriter := writer tag: 'two'.
		self
			assert: writer parentMarkupWriter == tagWriter;
			assert: newTagWriter parentMarkupWriter == tagWriter;
			assert: (writer parentMarkupWriterOf: newTagWriter) == tagWriter].