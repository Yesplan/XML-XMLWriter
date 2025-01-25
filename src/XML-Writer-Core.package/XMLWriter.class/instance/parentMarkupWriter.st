accessing
parentMarkupWriter
	^ self activeMarkupWriter
		ifNotNil: [:activeMarkupWriter | self parentMarkupWriterOf: activeMarkupWriter]