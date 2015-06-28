versions
version012: spec
	<version: '0.1.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1.2'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '6/28/2015 23:07'.
		spec 
			package: #'NanoStrand-Core' with: 'NanoStrand-Core-MasashiUmezawa.81';
			package: #'NanoStrand-NativeBoost-FFI' with: 'NanoStrand-NativeBoost-FFI-MasashiUmezawa.25';
			package: #'NanoStrand-Pharo-Core' with: 'NanoStrand-Pharo-Core-MasashiUmezawa.1';
			package: #'NanoStrand-Tests' with: 'NanoStrand-Tests-MasashiUmezawa.28'. ].
