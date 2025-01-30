public
pollFds: fds nfds: nfds timeout: timeout

	^ self ffiCall: #(int nn_poll(nn_pollfd* fds, int nfds, int timeout))