pragma solidity ^0.4.19;

import "./CompositedImpl.sol";

contract Crowdsale {

	mapping(address => uint) public someData;

	CompositedImpl compositedImpl;

	function Crowdsale() public {
		compositedImpl = new CompositedImpl();
	}

	// Gas: 5570 (26842)
	function testHardCoded() public {
		someData[msg.sender] = someData[msg.sender] + 1;
	}

	// Gas: 5614 (26886)
	function testInheritance() public {
		// override	
	}

	// Gas: 9344 (30616)
	function testComposition() public {
		compositedImpl.execute(this);
	}
	
	function updateData(address key) public {
	    someData[key] = someData[key] + 1;
	}
}
