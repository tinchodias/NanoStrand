private
forkAndWait: aBlock priority: aPriority
	| process val |
	[process := [val := aBlock value] newProcess.
	process priority: aPriority.
	process resume.
	val] forkAndWait. 
	^val