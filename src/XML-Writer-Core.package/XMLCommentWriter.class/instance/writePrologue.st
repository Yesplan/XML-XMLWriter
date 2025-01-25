private
writePrologue
	self omitIfCanonicalInDTD: [
		self writer
			formatBeforeComment: self;
			nextPutAll: '<!--']