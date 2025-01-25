private
writePrologue
	self omitIfCanonical: [
		self writer
			formatBeforeXMLDeclaration: self;
			nextPutAll: '<?xml']