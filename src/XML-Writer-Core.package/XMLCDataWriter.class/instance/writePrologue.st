private
writePrologue
	self omitIfCanonical: [
		self writer
			formatBeforeCData: self;
			nextPutAll: '<![CDATA[']