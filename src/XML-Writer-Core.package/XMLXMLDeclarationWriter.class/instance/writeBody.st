private
writeBody
	self omitIfCanonical: [
		self writer
			space;
			writeName: 'version'
			unescapedValue: (self version ifEmpty: ['1.0']).
		self encoding
			ifNotEmpty: [:encodingName |
				self writer
					space;
					writeName: 'encoding'
					unescapedValue: encodingName].
		self standalone
			ifTrue: [
				self writer
					space;
					writeName: 'standalone' unescapedValue: 'yes']]