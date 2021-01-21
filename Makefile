.PHONY: release console

release:
	rm -rf build
	truffle compile
	truffle-flattener ./contracts/UnifinancetechClaim.sol > flatten.sol

console:
	rm -rf build
	truffle compile
	truffle console
