private
writeEpilogue
	self omitIfCanonicalInDTD: [
		self writer
			nextPutAll: '-->';
			formatAfterComment: self]