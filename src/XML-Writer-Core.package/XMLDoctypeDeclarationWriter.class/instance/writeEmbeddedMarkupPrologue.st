private
writeEmbeddedMarkupPrologue
	self omitIfCanonical: [
		self writer
			space;
			nextPut: $[;
			formatBeforeInternalSubset: self]