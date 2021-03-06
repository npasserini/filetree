tests
testInitGitFileTree
	"Test if we can create a gitfiletree repo."

	| dir |
	dir := self utilityClass directoryFromPath: 'temp' relativeTo: self utilityClass default.
	self utilityClass ensureDirectoryExists: dir.
	self assert: dir isWritable.
	self class gitCreateAndInitRepo: dir.
	MCFileTreeGitRepository new directory: dir.
	self assert: (self utilityClass filePathExists: '.filetree' relativeTo: dir)