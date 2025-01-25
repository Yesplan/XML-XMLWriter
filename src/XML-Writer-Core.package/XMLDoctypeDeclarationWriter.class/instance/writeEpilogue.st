private
writeEpilogue
	self omitIfCanonical: [
		self hasEmbeddedMarkup
			ifTrue: [
				self writer
					formatAfterInternalSubset: self;
					nextPut: $]].
		self writer
			nextPut: $>;
			formatAfterDoctypeDeclaration: self]