accessing
activeMarkupWriter
	| stackSize |

	"for speed"
	^ (stackSize := markupWriterStack size) > 0
		ifTrue: [markupWriterStack at: stackSize]
		ifFalse: [nil]