public
recvMsgS: s msghdr: msghdr flags: flags

	^ self ffiCall: #(int nn_recvmsg(int s, nn_msghdr* msghdr, int flags))