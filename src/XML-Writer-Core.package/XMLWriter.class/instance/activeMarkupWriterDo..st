private
activeMarkupWriterDo: aBlock
	"evaluate aBlock for the active (top) markup writer until it
	is nil or is the same (still active) writer after evaluating"
	| activeMarkupWriter previousActiveMarkupWriter |

	[(activeMarkupWriter := self activeMarkupWriter) isNil
		or: [activeMarkupWriter == previousActiveMarkupWriter]]
		whileFalse: [
			aBlock value: activeMarkupWriter.
			previousActiveMarkupWriter := activeMarkupWriter]