public
cmsg_nxthdr_Mhdr: mhdr cmsg: cmsg

	^ self ffiCall: #(nn_cmsghdr* nn_cmsg_nxthdr_(nn_msghdr* mhdr, nn_cmsghdr* cmsg))