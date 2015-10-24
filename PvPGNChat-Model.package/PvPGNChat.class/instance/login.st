connection - private
login

	socket
		sendCommand: (ByteArray with: 3 with: 4);
		sendCommand: loginName;
		sendCommand: password