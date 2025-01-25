private
writePrologue
	self writer
		formatBeforeStartTag: self;
		nextPut: $<;
		writeName: self name;
		writeXMLNSDeclarations: xmlnsDeclarations;
		writeAttributes: attributes