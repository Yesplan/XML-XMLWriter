private
writeAttributes: anAttributeCollection
	anAttributeCollection
		ifNotNil: [
			self isCanonical
				ifTrue: [anAttributeCollection writeSortedAttributesOn: self]
				ifFalse: [anAttributeCollection writeAttributesOn: self]]