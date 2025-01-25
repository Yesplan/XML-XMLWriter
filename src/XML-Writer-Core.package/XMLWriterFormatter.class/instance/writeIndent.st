private
writeIndent
	1 to: self currentIndentLevel do: [:i |
		self writer nextPutAll: self indentString]