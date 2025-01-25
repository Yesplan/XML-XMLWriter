private
writePrologue
	self omitIfCanonical: [
		self writer
			formatBeforeDoctypeDeclaration: self;
			nextPutAll: '<!DOCTYPE';
			space;
			writeName: self root.

		self externalIDWriter hasExternalID
			ifTrue: [
				self writer space.
				self externalIDWriter writeOn: self writer]]