private
writePrologue
	self omitIfCanonical: [
		self writer
			formatBeforeDeclaration: self;
			nextPutAll: '<!';
			writeName: self declarationType;
			space;
			writeName: self name;
			space]