private
writeEpilogue
	self omitIfCanonical: [
		self writer
			nextPut: $>;
			formatAfterDeclaration: self]