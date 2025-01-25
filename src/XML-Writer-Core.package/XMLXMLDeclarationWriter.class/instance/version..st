accessing
version: aVersionFloatOrString
	| versionString |

	versionString := (aVersionFloatOrString ifNil: ['1.0']) asString.
	version :=
		versionString "cutoff excess digits without first: for GS portability"
			copyFrom: 1
			to: (3 min: versionString size)