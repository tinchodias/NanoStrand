baseline
baseline: spec
	<baseline>

	spec
		for: #common
		do: [ 
			spec
				package: 'NanoStrand-Core' with: [ spec requires: #('NanoStrand-FFI') ];
				package: 'NanoStrand-FFI';
				package: 'NanoStrand-Tests' with: [ spec requires: #('NanoStrand-Core') ].
 ]