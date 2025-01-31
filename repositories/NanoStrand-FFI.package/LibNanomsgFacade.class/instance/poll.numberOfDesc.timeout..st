actions
poll: pollDescriptorArray numberOfDesc: nfds timeout: timeoutMsecs

	^ self
		  pollFds: pollDescriptorArray address
		  nfds: nfds
		  timeout: timeoutMsecs