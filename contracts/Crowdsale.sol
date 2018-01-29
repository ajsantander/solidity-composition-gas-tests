pragma solidity ^0.4.19;

import "./CompositedImpl.sol";

contract Crowdsale {

	mapping(address => bool) public someData;

	CompositedImpl compositedImpl;

	function Crowdsale() public {
		compositedImpl = new CompositedImpl();
	}

	// Gas: 20834 (42106)
	function testHardCoded() public {
		someData[msg.sender] = !someData[msg.sender];
	}

	// Gas: 5900 (13586)
	function testInheritance() public {
		// override	
	}

	// Gas: 26534 (47806)
	function testComposition() public {
		compositedImpl.execute(this);
	}
	
	function updateData(address key, bool val) public {
	    someData[key] = val;
	}
}
