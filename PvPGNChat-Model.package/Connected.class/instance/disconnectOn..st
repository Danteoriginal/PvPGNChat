connection open/close
disconnectOn: aChat

	aChat
		sendExitIfConnected;
		endListenerProcess;
		closeSocket;
		setDisconnectedStatus