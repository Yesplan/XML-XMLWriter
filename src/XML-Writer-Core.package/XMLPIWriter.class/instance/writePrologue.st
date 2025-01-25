private
writePrologue
	self omitIfCanonicalInDTD: [
		self writer
			formatBeforePI: self;
			nextPutAll: '<?';
			writeName: self target]