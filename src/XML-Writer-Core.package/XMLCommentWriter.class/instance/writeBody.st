private
writeBody
	self omitIfCanonicalInDTD: [self writer nextPutAll: self string]