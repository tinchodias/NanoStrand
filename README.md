# NanoStrand
Smalltalk bindings for [nanomsg](http://nanomsg.org).


##Overview
nanomsg is a simple, fast socket abstraction library that supports many communication patterns ("scalability protocols").

NanoStrand is a gate to the nanomsg world for Smalltalk users. Since there are many language-bindings for nanomsg, integrations with other network programs would be much simpler via NanoStrand.

NanoStrand is composed of two-parts:

- A thin FFI wrapper of the nanomsg API (NanoStrand-FFI) 
- More "objectified" socket classes (NanoStrand-Core)

Currently NativeBoost is used for FFI, so the main target is Pharo Smalltalk. But FFI part would be pluggable for supporting other Smalltalk dialects.

For MCZ packages, visit <a href="http://smalltalkhub.com/#!/~MasashiUmezawa/NanoStrand">SmalltalkHub NanoStrand site</a>.


##Installation
- Download and compile nanomsg.
	
	Please see [the instruction](http://nanomsg.org/download.html) in nanomsg site. 

- Put the nanomsg shared library (so, dll, or dylib) to VM directory.

- Load NanoStrand to Pharo.

```Smalltalk
Gofer new
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/NanoStrand/main';
      package: 'ConfigurationOfNanoStrand';
      load.
(Smalltalk at: #ConfigurationOfNanoStrand) load
```

##Usage

Please see wikis for usages.
