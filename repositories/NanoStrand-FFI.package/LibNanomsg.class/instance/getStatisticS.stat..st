public
getStatisticS: s stat: stat

	^ self ffiCall: #(uint64_t nn_get_statistic(int s, int stat))