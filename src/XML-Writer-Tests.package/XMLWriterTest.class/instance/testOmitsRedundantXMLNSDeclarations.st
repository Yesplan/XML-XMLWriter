tests
testOmitsRedundantXMLNSDeclarations
	| withBlock |

	withBlock := [:writer |
		(writer tag: 'one')
			xmlns: 'defaultNS';
			xmlnsAt: 'prefix' put: 'prefixNS';
			with: [
				(writer tag: 'two')
					xmlns: 'defaultNS';
					xmlnsAt: 'prefix' put: 'prefixNS';
					with: [
						(writer tag: 'three')
							xmlns: 'newDefaultNS';
							xmlnsAt: 'prefix' put: 'newPrefixNS']]].
	self assert:
		(XMLWriter writeWith: withBlock) =
			('<one xmlns="defaultNS" xmlns:prefix="prefixNS"><two>',
			'<three xmlns="newDefaultNS" xmlns:prefix="newPrefixNS" />',
			'</two></one>').
	self assert:
		(XMLWriter new
			omitsRedundantXMLNSDeclarations: false;
			writeWith: withBlock;
			contents) =
			('<one xmlns="defaultNS" xmlns:prefix="prefixNS">',
			'<two xmlns="defaultNS" xmlns:prefix="prefixNS">',
			'<three xmlns="newDefaultNS" xmlns:prefix="newPrefixNS" />',
			'</two></one>').
	self assert:
		(XMLWriter writeWith: [:writer | (writer tag: 'empty') xmlns: '']) =
			'<empty xmlns="" />'.