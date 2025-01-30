public
sendMsgS: s msghdr: msghdr flags: flags

	^ self ffiCall: #(int nn_sendmsg(int s, nn_msghdr* msghdr, int flags))