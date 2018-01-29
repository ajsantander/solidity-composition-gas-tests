pragma solidity ^0.4.19;

import "./CompositedCrowdsale.sol";

contract CompositedImpl {

	function execute(CompositedCrowdsale crowdsale) public {
	    crowdsale.updateData(msg.sender);
	}
}
