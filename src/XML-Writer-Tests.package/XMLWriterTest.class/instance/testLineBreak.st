tests
testLineBreak
	| writer  |

	(writer := XMLWriter new)
		enablePrettyPrinting;
		lineBreak: $N.
	writer
		xml;
		tag: 'test'.
	self assert: writer contents = '<?xml version="1.0"?>N<test />'