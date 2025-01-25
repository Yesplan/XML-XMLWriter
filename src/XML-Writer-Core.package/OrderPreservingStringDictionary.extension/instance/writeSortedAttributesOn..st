*XML-Writer-Core
writeSortedAttributesOn: aWriter
	self keys sort do: [:attributeName |
		aWriter
			writeAttributeName: attributeName
			value: (self at: attributeName ifAbsent: '')]