actions
poll: pollDescriptorArray numberOfDesc: nfds timeout: timeoutMsecs

	^ self
		  pollFds: pollDescriptorArray
		  nfds: nfds
		  timeout: timeoutMsecs