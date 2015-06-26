versions
version011: spec
	<version: '0.1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1.1'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '6/26/2015 22:11'.
		spec 
			package: #'NanoStrand-Core' with: 'NanoStrand-Core-MasashiUmezawa.79';
			package: #'NanoStrand-NativeBoost-FFI' with: 'NanoStrand-NativeBoost-FFI-MasashiUmezawa.25';
			package: #'NanoStrand-Pharo-Core' with: 'NanoStrand-Pharo-Core-MasashiUmezawa.1';
			package: #'NanoStrand-Tests' with: 'NanoStrand-Tests-MasashiUmezawa.28'. ].
