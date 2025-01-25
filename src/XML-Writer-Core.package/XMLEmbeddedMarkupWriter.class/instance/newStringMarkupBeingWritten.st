private
newStringMarkupBeingWritten
	self isWriting
		ifTrue: [
			self hasEmbeddedMarkup
				ifFalse: [self writeEmbeddedMarkupPrologue].
			hasEmbeddedStringMarkup := true]
		ifFalse: [self write]