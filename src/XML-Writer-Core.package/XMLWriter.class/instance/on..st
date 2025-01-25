initialization
on: aStream
	stream := aStream.
	markupWriterStack := OrderedCollection new.
	lineBreak := self class defaultLineBreak.
	contentEscapes := ContentEscapes.
	contentStringEscapes := ContentStringEscapes.
	isEscaping := true.
	isCanonical := false.
	outputsSelfClosingTags := true.
	omitsRedundantXMLNSDeclarations := true.