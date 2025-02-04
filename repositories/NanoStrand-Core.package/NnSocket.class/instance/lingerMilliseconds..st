options
lingerMilliseconds: msecs
	"Set NN_LINGER. IMPORTANT: This option is not implemented, and should not be used in new code. Applications which need to be sure that their messages are delivered to a remote peer should either use an acknowledgement (implied when receiving a reply on NN_REQ sockets), or insert a suitable delay before calling nn_close(3) or exiting the application.
	See: https://nanomsg.org/v1.1.5/nn_setsockopt.html"

	^ self optionAt: self constants @ #NN_LINGER put: msecs