testing
escapesContentEntityReferences
	^ (contentEscapes at: $& asciiValue) notNil
		and: [(contentStringEscapes at: $& asciiValue) notNil]