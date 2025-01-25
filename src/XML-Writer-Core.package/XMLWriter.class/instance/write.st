writing
write
	self activeMarkupWriterDo: [:each |
		each isWriting
			ifFalse: [each write]]