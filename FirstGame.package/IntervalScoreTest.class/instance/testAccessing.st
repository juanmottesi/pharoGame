as yet unclassified
testAccessing

	| intervalScore |
	
	intervalScore := IntervalScore from: 0 to: 100 scoring: 3.
	
	self 
		assert: intervalScore from equals: 0;
		assert: intervalScore to equals: 100;
		assert: intervalScore score equals: 3.
	