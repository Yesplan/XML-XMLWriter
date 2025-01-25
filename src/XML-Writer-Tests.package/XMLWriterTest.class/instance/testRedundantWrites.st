tests
testRedundantWrites
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'report'
				with: [
					writer
						tag: 'name'
						with: 'TestName - Report'.
					writer write.
					writer writeWith: [:writer2 |
						writer2
							tag: 'finality'
							with: 'succeed'.
						writer2 write].
					writer write].
				writer write]) =
			('<report>',
			'<name>TestName - Report</name>',
			'<finality>succeed</finality>',
			'</report>')