*XML-Writer-Core
embedInMarkupWriter: aMarkupWriter
	self do: [:each | each embedInMarkupWriter: aMarkupWriter]