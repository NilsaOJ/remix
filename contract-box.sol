// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract BoxDNTB is Ownable {
   uint private m_value;

   event ValueChanged(uint old_value, uint new_value);

   function store(uint value) public onlyOwner {
       uint old_value = m_value;
       emit ValueChanged(old_value, m_value);
   }

   function retrieve() public view returns (uint) {
       return m_value;
   }
}