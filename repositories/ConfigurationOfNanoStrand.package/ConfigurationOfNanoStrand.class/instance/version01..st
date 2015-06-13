versions
version01: spec
	<version: '0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '6/13/2015 23:30'.
		spec 
			package: #'NanoStrand-Core' with: 'NanoStrand-Core-MasashiUmezawa.76';
			package: #'NanoStrand-NativeBoost-FFI' with: 'NanoStrand-NativeBoost-FFI-MasashiUmezawa.25';
			package: #'NanoStrand-Pharo-Core' with: 'NanoStrand-Pharo-Core-MasashiUmezawa.1';
			package: #'NanoStrand-Tests' with: 'NanoStrand-Tests-MasashiUmezawa.28'. ].
