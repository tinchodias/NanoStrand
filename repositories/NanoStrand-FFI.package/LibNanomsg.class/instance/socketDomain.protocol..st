public
socketDomain: domain protocol: protocol

	^ self ffiCall: #(int nn_socket(int domain, int protocol))