private
pushNewMarkupWriter: aMarkupWriterClass
	| newMarkupWriter |

	(newMarkupWriter := aMarkupWriterClass new) writer: self.
	self activeMarkupWriterDo: [:each | each newMarkupWriterBeingPushed].

	^ self markupWriterStack addLast: newMarkupWriter.