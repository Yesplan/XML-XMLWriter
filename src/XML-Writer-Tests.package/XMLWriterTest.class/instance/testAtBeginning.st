tests
testAtBeginning
	"on GS writeStream gives an ANSI 0-based position stream,
	on: doesn't, so both are tested"
	(Array
		with: String new writeStream
		with: (WriteStream on: String new))
		do: [:stream | | writer |
			writer := XMLWriter on: stream.
			self assert: writer atBeginning.

			stream nextPut: $<.
			self deny: writer atBeginning]