writing
writeOn: aWriter
	self publicID
		ifEmpty: [
			self systemID
				ifNotEmpty: [aWriter nextPutAll: 'SYSTEM']]
		ifNotEmpty: [:id |
			aWriter
				nextPutAll: 'PUBLIC';
				space;
				writeUnescapedString: id].

	self systemID ifNotEmpty: [:id |
		aWriter
			space;
			writeUnescapedString: id].