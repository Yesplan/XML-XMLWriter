"
Records sent formatter messages in a queue for testing.
"
Class {
	#name : 'XMLWriterRecordingFormatterProxy',
	#superclass : 'Object',
	#instVars : [
		'messageQueue'
	],
	#category : 'XML-Writer-Tests-Utilities',
	#package : 'XML-Writer-Tests',
	#tag : 'Utilities'
}

{ #category : 'reflective operations' }
XMLWriterRecordingFormatterProxy >> doesNotUnderstand: aMessage [

	| name |
	name := (SystemVersion current major < 13) 
		ifTrue: [ XMLWriterFormatter whichCategoryIncludesSelector: aMessage selector ]
		ifFalse: [ XMLWriterFormatter protocolNameOfSelector: aMessage selector ].
		
	name = #formatting ifTrue: [ messageQueue addLast: aMessage ]
		
]

{ #category : 'initialization' }
XMLWriterRecordingFormatterProxy >> initialize [

	super initialize.
	messageQueue := OrderedCollection new
]

{ #category : 'testing' }
XMLWriterRecordingFormatterProxy >> receivedNext: aSelector with: anArgument [

	^ self receivedNextAll: (Array with: aSelector) with: anArgument
]

{ #category : 'testing' }
XMLWriterRecordingFormatterProxy >> receivedNextAll: aNameCollection with: anArgument [

	aNameCollection do: [ :each |
		| message |
		(messageQueue isNotEmpty and: [
			 (message := messageQueue first) selector == each asSymbol and: [
				 message arguments asArray = (Array with: anArgument) ] ])
			ifFalse: [ ^ false ].
		messageQueue removeFirst ].
	^ true
]
