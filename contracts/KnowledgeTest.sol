//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract KnowledgeTest {
    string[] public tokens = ["BTC", "ETH"];
    address[] public players;
    address public owner;


    constructor() {
        owner = msg.sender;
    }

    function changeTokens() public {
        tokens[0] = "VET";
    }

    receive() external payable{
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function transferAll(address dest) public {
        require(msg.sender == owner, "ONLY_OWNER");
        payable(dest).transfer(address(this).balance);
    }

    function start() public {
        players.push(msg.sender);
    }

    function concatenate(string calldata a, string calldata b) public pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

}



