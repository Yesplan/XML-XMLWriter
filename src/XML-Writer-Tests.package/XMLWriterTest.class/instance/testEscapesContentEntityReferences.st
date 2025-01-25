tests
testEscapesContentEntityReferences
	self assert:
		(XMLWriter writeWith: [:writer |
			(writer
				escapesContentEntityReferences: false;
				tag: 'one')
				attributeAt: 'two' put: '<"&three;">';
				with: '<"&four;">']) =
			'<one two="&lt;&quot;&three;&quot;>">&lt;"&four;"&gt;</one>'.

	self assert:
		(XMLWriter writeWith: [:writer |
			(writer
				escapesContentEntityReferences: true;
				tag: 'one')
				attributeAt: 'two' put: '<"&three;">';
				with: '<"&four;">']) =
			'<one two="&lt;&quot;&amp;three;&quot;>">&lt;"&amp;four;"&gt;</one>'.

	self assert: XMLWriter new escapesContentEntityReferences.
	self deny:
		(XMLWriter new
			escapesContentEntityReferences: false;
			escapesContentEntityReferences).