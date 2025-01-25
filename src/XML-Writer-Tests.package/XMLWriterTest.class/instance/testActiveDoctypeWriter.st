tests
testActiveDoctypeWriter
	| writer doctypeWriter |

	writer := XMLWriter new.
	self assert: writer activeDoctypeWriter isNil.

	doctypeWriter := writer doctype.
	self assert: writer activeDoctypeWriter == doctypeWriter.

	doctypeWriter with: [
		writer comment: 'test'.
		self assert: writer activeDoctypeWriter == doctypeWriter].

	self assert: writer activeDoctypeWriter isNil.