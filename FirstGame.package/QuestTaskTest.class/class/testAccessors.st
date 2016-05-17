as yet unclassified
testAccessors

	| questTask |
	
	questTask := QuestTask descripted: 'Encontrar clases que implementen el método do:' withTips: (OrderedCollection with: 'El Spotter es tu mejor amigo ;D').
	
	self 
		assert: questTask description equals: 'Encontrar clases que implementen el método do:';
		assertCollection: questTask tips  hasSameElements: (OrderedCollection with:'El Spotter es tu mejor amigo ;D').