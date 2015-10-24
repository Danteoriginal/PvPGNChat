connection - private
closeSocket

	socket isValid ifTrue: [ socket closeAndDestroy ]