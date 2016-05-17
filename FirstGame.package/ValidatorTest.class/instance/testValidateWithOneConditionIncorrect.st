as yet unclassified
testValidateWithOneConditionIncorrect
	| validator |
	validator := Validator
		primaries:
			(OrderedCollection
				with: [ :aClassCollection | aClassCollection allSatisfy: [ :aClass | aClass allSelectors includes: #do: ] ])
		secondly: OrderedCollection new.
	self assert: (validator validate: (OrderedCollection with: Integer)) equals: 0