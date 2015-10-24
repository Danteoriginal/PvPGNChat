processing - private
process: aMessage

	| stream command |

	stream := aMessage content readStream.
	stream next = commandTrigger
		ifFalse: [ ^ self ].
	[ 
	[ 
	command := ChatCommand buildFrom: aMessage named: (stream upTo: Character space) arguments: stream upToEnd.
	self execute: command ]
		on: ExecutionFailed
		do: [ :ex | 
			chat send: ex messageText.
			ex return ] ] forkAt: Processor userBackgroundPriority named: 'Command execution process'