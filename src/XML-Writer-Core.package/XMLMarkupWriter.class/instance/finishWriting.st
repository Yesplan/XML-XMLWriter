writing
finishWriting
	self hasEmbeddedMarkupWriters
		ifTrue: [self writer writeUnwrittenMarkupWritersEmbeddedIn: self].
	self writeEpilogue.
	isWriting := false.

	self writer popActiveMarkupWriter.