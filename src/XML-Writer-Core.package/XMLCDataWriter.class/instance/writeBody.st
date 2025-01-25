private
writeBody
	self writer isCanonical
		ifTrue: [
			self parentMarkupWriter
				ifNotNil: [:parent | parent newStringMarkupBeingWritten].
			self writer writeEscapedContent: self string]
		ifFalse: [self writer nextPutAll: self string]