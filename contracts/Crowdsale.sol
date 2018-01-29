pragma solidity ^0.4.19;

// Gas: 83124 (162352)
contract Crowdsale {

	mapping(address => uint) public someData;

	// Gas: 5570 (26842)
	function testHardCoded() public {
		someData[msg.sender] = someData[msg.sender] + 1;
	}

	// Gas: 5614 (26886)
	function testInheritance() public {
		// override	
	}
}
