message matchers - private
userCodeMessageMatcherFor: aString

	^ aString size < 242
		ifTrue: [ RxMatcher forString: '(.*) (\d\d\d\d) "(.*)"' ]
		ifFalse: [ RxMatcher forString: '(.*) (\d\d\d\d) "(.*)' ]