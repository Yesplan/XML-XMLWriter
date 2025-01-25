private
writeXMLNS: aPrefix uri: aURI
	self
		space;
		writeName:
			(aPrefix isEmpty
				ifTrue: ['xmlns']
				ifFalse: ['xmlns:', aPrefix])
		escapedContentValue: aURI