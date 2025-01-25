private
writeEpilogue
	self omitIfCanonical: [
		self writer
			nextPutAll: '?>';
			formatAfterXMLDeclaration: self]