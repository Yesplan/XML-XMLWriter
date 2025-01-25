private
writeUnwrittenMarkupWritersEmbeddedIn: aMarkupWriter
	self activeMarkupWriterDo: [:each |
		each == aMarkupWriter
			ifTrue: [^ self].
		each isWriting
			ifFalse: [each write]]