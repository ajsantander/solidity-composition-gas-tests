pragma solidity ^0.4.19;

import "./Crowdsale.sol";

contract CompositedImpl {

	function execute(Crowdsale crowdsale) public {
	    crowdsale.updateData(msg.sender);
	}
}
