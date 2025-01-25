private
omitIfCanonicalInDTD: aBlock
	| parent |

	(self writer isCanonical
		and: [(parent := self parentMarkupWriter) notNil
			and: [parent isDoctypeWriter]])
		ifFalse: [aBlock value]