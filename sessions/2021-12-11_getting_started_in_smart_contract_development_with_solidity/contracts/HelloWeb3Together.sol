// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract HelloWeb3Together {
    function ping() public pure returns (string memory) {
        return ("Web3Together - https://github.com/web3together/web3together");
    }

    function clock() public view returns (uint) {
        return block.timestamp;
    }
}
