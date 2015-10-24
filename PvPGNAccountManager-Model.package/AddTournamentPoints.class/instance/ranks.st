running
ranks

	^ Dictionary new
		at: (0 to: 9) put: 0;
		at: (10 to: 24) put: 10;
		at: (25 to: 49) put: 75;
		at: (50 to: 99) put: 150;
		at: (100 to: 199) put: 250;
		at: (200 to: 200) put: 500;
		yourself
		
	