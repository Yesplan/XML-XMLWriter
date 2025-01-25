private
writeXMLNSDeclarations: aDictionary
	| checkForDuplicates parentMarkupWriter |

	aDictionary
		ifNil: [^ self].
	checkForDuplicates := 
		self omitsRedundantXMLNSDeclarations
			and: [(parentMarkupWriter := self parentMarkupWriter) notNil
				and: [parentMarkupWriter isTagWriter]].
	self isCanonical
		ifTrue: [
			(aDictionary keys reject: [:prefix |
				(checkForDuplicates
					and: [parentMarkupWriter xmlnsAt: prefix]) = (aDictionary at: prefix)])
				sort;
				do: [:prefix |
					self
						writeXMLNS: prefix
						uri: (aDictionary at: prefix)]]
		ifFalse: [
			aDictionary keysDo: [:prefix | | uri |
				uri := aDictionary at: prefix.
				(checkForDuplicates
					and: [(parentMarkupWriter xmlnsAt: prefix) = uri])
					ifFalse: [
						self
							writeXMLNS: prefix
							uri: uri]]].