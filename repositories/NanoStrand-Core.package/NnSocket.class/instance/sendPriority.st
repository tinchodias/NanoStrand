options
sendPriority
	"Sets outbound priority for endpoints subsequently added to the socket. This option has no effect on socket types that send messages to all the peers. However, if the socket type sends each message to a single peer (or a limited set of peers), peers with high priority take precedence over peers with low priority. The type of the option is int. Highest priority is 1, lowest priority is 16. Default value is 8."
	^self optionAt: self constants @ #NN_SNDPRIO