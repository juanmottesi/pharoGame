as yet unclassified
testAccessor
	
	| scoringCriteria intervalScore |
	
	intervalScore := IntervalScore from: 0 to: 100 scoring: 5.
	
	scoringCriteria := ScoringCriteria definedIntervalsWith: (OrderedCollection with: intervalScore).
	
	self assertCollection: scoringCriteria intervals hasSameElements: (OrderedCollection with: intervalScore).
	