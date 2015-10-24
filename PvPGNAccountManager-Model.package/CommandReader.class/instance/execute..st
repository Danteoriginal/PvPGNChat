processing - private
execute: command

	[ 
	mutex wait.
	command executeOn: self ]
		ensure: [ mutex signal ]