baselines
baseline: spec

	<baseline>

	spec for: #common do: [
		spec baseline: 'OrderPreservingDictionary' with: [
			spec
				loads: 'Core';
				repository: 'github://Yesplan/OrderPreservingDictionary:9d3994948987e2c29facdcf4f11dfcfd283da5cf/src' ].

		spec package: 'XML-Writer-Core' with: [ spec requires: 'OrderPreservingDictionary' ].

		spec group: 'Core' with: #('XML-Writer-Core') ]
