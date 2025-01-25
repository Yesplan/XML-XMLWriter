tests
testFormatter
	| writer formatter |

	writer := XMLWriter new.
	self assert: writer formatter isNil.

	formatter := XMLPrettyPrintingWriterFormatter new.
	writer formatter: formatter.
	self
		assert: writer formatter == formatter;
		assert: formatter writer == writer.