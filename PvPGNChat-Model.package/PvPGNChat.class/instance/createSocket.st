connection - private
createSocket

	socket := Socket newTCP.	"Create the connection"
	socket connectToHostNamed: server port: port