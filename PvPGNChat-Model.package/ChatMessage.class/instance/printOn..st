printing
printOn: aStream 
	aStream nextPutAll: self class name; space;
		 nextPutAll: self sender printString;
		 nextPutAll: ' - ';
		 nextPutAll: self content