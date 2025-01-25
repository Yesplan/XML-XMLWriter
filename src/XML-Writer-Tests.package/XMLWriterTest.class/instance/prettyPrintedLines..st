private
prettyPrintedLines: anArrayOfLineArrays
	| lineNumber |
	"takes an array of arrays where the first element of each is the indent level
	and the rest are the lines with that indent level"

	lineNumber := 1.
	^ String streamContents: [:stream |
		anArrayOfLineArrays do: [:each | | indentLevel |
			indentLevel := XMLPrettyPrintingWriterFormatter defaultIndentLevel + each first.
			2 to: each size do: [:lineIndex |
				lineNumber > 1
					ifTrue: [
						stream nextPutAll: XMLWriter defaultLineBreak.
						indentLevel timesRepeat: [
							stream nextPutAll:
								XMLPrettyPrintingWriterFormatter defaultIndentString]].
				stream nextPutAll: (each at: lineIndex).
				lineNumber := lineNumber + 1]]]