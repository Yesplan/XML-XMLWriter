private
writeBody
	self writer
		writeName: self name;
		writeXMLNSDeclarations: xmlnsDeclarations;
		writeAttributes: attributes