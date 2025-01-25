accessing
escapesContentEntityReferences: aBoolean
	aBoolean
		ifTrue: [
			contentEscapes := ContentEscapes.
			contentStringEscapes := ContentStringEscapes]
		ifFalse: [
			contentEscapes := ContentNonEntityEscapes.
			contentStringEscapes := ContentStringNonEntityEscapes]