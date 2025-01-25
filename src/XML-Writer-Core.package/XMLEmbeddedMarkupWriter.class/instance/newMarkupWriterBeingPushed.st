private
newMarkupWriterBeingPushed
	self isWriting
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self writeEmbeddedMarkupPrologue].
			hasEmbeddedMarkupWriters := true]
		ifFalse: [self write]