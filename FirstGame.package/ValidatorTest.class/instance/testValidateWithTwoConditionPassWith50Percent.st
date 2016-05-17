as yet unclassified
testValidateWithTwoConditionPassWith50Percent
	| validator |
	validator := Validator
		primaries:
			(OrderedCollection
				with: [ :aClassCollection | aClassCollection allSatisfy: [ :aClass | aClass allSelectors includes: #do: ] ])
		secondly: (OrderedCollection with: [:aClassCollection | aClassCollection size = 5]).
	self assert: (validator validate: (OrderedCollection with: OrderedCollection)) equals: 50