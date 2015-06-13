baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/NanoStrand/main/'.
		spec 
			package: #'NanoStrand-Core';
			package: #'NanoStrand-NativeBoost-FFI';
			package: #'NanoStrand-Pharo-Core';
			package: #'NanoStrand-Tests'.
		spec 
			group: 'Core' with: #(#'NanoStrand-Core' #'NanoStrand-Pharo-Core' );
			group: 'FFI' with: #(#'NanoStrand-NativeBoost-FFI' );
			group: 'Test' with: #(#'NanoStrand-Tests' ). ].
