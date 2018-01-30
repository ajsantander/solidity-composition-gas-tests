
pragma solidity ^0.4.19;

import "./CompositedImpl.sol";

// Gas: ?
contract Impl is CompositedInheritanceCrowdsale {

	function CompositedCrowdsale() public {
    addImplementation(implementation);
	}

  function implementation() {
    someData[msg.sender] = someData[msg.sender] + 1;
  }
}

contract CompositedInheritanceCrowdsale {

	mapping(address => uint) public someData;
  
  function() view returns (bool)[] impls;

  function addImplementation(function() view returns (bool) impl) internal {
    impls.push(impl);
  }

  // Gas: 442 (21714)
  function testCompositedInheritance() {
    for(uint i = 0; i < impls.length; i++) {
      impls[i]();
    }
  }
}
