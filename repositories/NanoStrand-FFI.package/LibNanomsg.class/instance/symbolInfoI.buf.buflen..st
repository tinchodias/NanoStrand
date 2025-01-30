public
symbolInfoI: i buf: buf buflen: buflen

	^ self ffiCall: #(int nn_symbol_info(int i, nn_symbol_properties* buf, int buflen))