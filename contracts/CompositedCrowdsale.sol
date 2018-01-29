pragma solidity ^0.4.19;

import "./CompositedImpl.sol";

// Gas: 254291 (376087)
contract CompositedCrowdsale {

	mapping(address => uint) public someData;

	CompositedImpl compositedImpl;

	function CompositedCrowdsale() public {
		compositedImpl = new CompositedImpl();
	}

	// Gas: 9344 (30616)
	function testComposition() public {
		compositedImpl.execute(this);
	}
	
	function updateData(address key) public {
	    someData[key] = someData[key] + 1;
	}
}
