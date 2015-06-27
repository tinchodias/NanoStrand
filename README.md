# NanoStrand
Smalltalk bindings for [nanomsg](http://nanomsg.org).


##Overview
nanomsg is a simple, fast socket abstraction library that supports many communication patterns ("scalability protocols").

NanoStrand is a gate to the nanomsg world for Smalltalk users. Since there are many [language-bindings for nanomsg](http://nanomsg.org/documentation.html), integrations with other network programs would be much simpler via NanoStrand.

NanoStrand is composed of two-parts:

- A thin FFI wrapper of the nanomsg API (NanoStrand-FFI) 
- More "objectified" socket classes (NanoStrand-Core)

Currently FFI part is based on NativeBoost, so the main target is [Pharo Smalltalk](http://pharo.org). But the FFI part will be pluggable for supporting other Smalltalk dialects (Squeak, Cuis, VisualWorks, etc).

For MCZ packages, visit <a href="http://smalltalkhub.com/#!/~MasashiUmezawa/NanoStrand">SmalltalkHub NanoStrand site</a>.


##Installation
- Download and compile nanomsg.
	
	Please see [the instruction](http://nanomsg.org/download.html) in nanomsg site. You'll need 32-bit option (CFLAGS=-m32), if you use 32-bit Cog VM.

- Put the nanomsg shared library (so, dll, or dylib) to the VM directory.

- Load NanoStrand to Pharo.

```Smalltalk
Gofer new
      url: 'http://smalltalkhub.com/mc/MasashiUmezawa/NanoStrand/main';
      package: 'ConfigurationOfNanoStrand';
      load.
(Smalltalk at: #ConfigurationOfNanoStrand) load
```

##Examples

###Simple PULL / PUSH on one node
```Smalltalk
[[
"Setup PULL socket"
sock1 := NnPullSocket withBind: 'tcp://*:5575'.sock1 onReceiveReady: [:sock | Transcript cr; show: '#PULL: ', sock receive asString]."Setup PUSH socket"sock2 := NnPushSocket withConnect: 'tcp://127.0.0.1:5575'.sock2 onSendReady: [:sock | sock send: '#PUSH: ', Time now printString]."Start a Poller for multiplexing"poller := NnPoller startWithSockets: {sock1. sock2}.1 seconds wait. "The process ends after a second"] ensure: [poller stopAndCloseSockets.]] fork.
```

###PULL + PUB server connected with PUSH / SUB multi clients

####Server - PULL + PUB
 This Smalltalk server pulls the messages from clients and pushes 'rem' events.

```Smalltalk
[[
received := OrderedCollection new. "A message box"

"Setup PULL socket"sock1 := NnPullSocket withBind: 'tcp://127.0.0.1:5585'.sock1 onReceiveReady: [:sock | | rec |	rec := (sock receiveFor: 200 timeoutDo: ['']) asString.	rec ifNotEmpty: [		received add: rec. "Stock the received message"		Transcript cr; show: 'Received:', rec, ':', Time now printString].]."Setup PUB socket"sock2 := NnPubSocket withBind: 'tcp://127.0.0.1:5586'.sock2 onSendReady: [:sock | |rem |	rem := received size rem: 10. "Compute the rem:10 of the messages."
	
	"If rem is 0 or 5, publish the events."	rem = 0 ifTrue: [sock send: 'Evt:Rem0:', Time now printString].	rem = 5 ifTrue: [sock send: 'Evt:Rem5:', Time now printString].].poller := NnPoller new.poller startWithSockets: {sock1. sock2}.30 seconds wait. "The demo server ends after 30 seconds. So, be quick!"] ensure: [poller stopAndCloseSockets.]] fork.

```

For clients, we use [nanocat](http://nanomsg.org/v0.5/nanocat.1.html). An official command line client of nanomsg (in C).

####Client 1 - PUSH
Pushes "HelloWorld" messages periodically.

```
$ nanocat --push --connect tcp://127.0.0.1:5585 --data HelloWorld -i 1
```

####Client 2 - SUB
Subscribes to all events.

```
$ nanocat --sub --connect tcp://127.0.0.1:5586 -A
```

####Client 3 - SUB
Subscribes to 'Event:Rem0' only.

```
$ nanocat --sub --connect tcp://127.0.0.1:5586 --subscribe Evt:Rem0 -A
```

Now you can see that after Client 1's messages are stocked on server, Rem0 & Rem5 events will be delivered to Clients 2, and Rem0 events will be delivered to Client 3.

