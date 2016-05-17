Evaluating
validate: aCollection
	(primary allSatisfy: [ :aCondition | aCondition value: aCollection ])
		ifTrue: [ 
			secondly ifEmpty: [ ^ 100 ].
			^ secondly
				inject: 50
				into: [ :res :condition | 
					(condition value: aCollection)
						ifTrue: [ res + (50 / secondly size) ]. res] ]
		ifFalse: [ ^ 0 ]