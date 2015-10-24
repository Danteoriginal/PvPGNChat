connection open/close
connectOn: aChat

	aChat
		createSocket;
		login;
		createListenerProcess;
		setConnectedStatus