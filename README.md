# NanoStrand
Smalltalk bindings for [nanomsg](http://nanomsg.org).

nanomsg is a simple, fast socket abstraction library that supports many communication patterns ("scalability protocols").

NanoStrand is a gate to the nanomsg world for Smalltalk users. Since there are many language-bindings for nanomsg, integrations with other network programs would be much simpler via NanoStrand.

NanoStrand is composed of two-parts:

- A thin FFI wrapper of the nanomsg API (NanoStrand-FFI) 
- More "objectified" socket classes (NanoStrand-Core)

Currently NativeBoost is used for FFI, so the main target is Pharo Smalltalk. But FFI part would be pluggable for supporting other Smalltalk dialects.

For MCZ packages, visit <a href="http://smalltalkhub.com/#!/~MasashiUmezawa/NanoStrand">SmalltalkHub NanoStrand site</a>.

Please see wikis for usages.

