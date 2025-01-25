testing
isEmbeddedWithStringMarkup
	| parent |

	^ (parent := self parentMarkupWriter) notNil
		and: [parent hasEmbeddedStringMarkup]