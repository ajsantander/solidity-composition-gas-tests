pragma solidity ^0.4.19;

import "./Crowdsale.sol";

contract InheritedImpl is Crowdsale {
	
	function testInheritance() public {
		someData[msg.sender] = !someData[msg.sender];
	}
}
