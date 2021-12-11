// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <0.9.0;

contract Web3Together {
    struct Participant {
        uint id;
        string name;
        address public_address;
        uint createdAt;
    }

    uint openDate;
    uint public participantsCount;
    mapping(address => Participant) private participants;

    event JoinEvent (
        string name,
        address public_address
    );

    constructor (uint _openDate) {
        openDate = _openDate;
    }

    function name() public pure returns (string memory) {
        return ("Web3Together - https://github.com/web3together/web3together");
    }

    function participant(address _participant) external view returns(Participant memory) {
        return participants[_participant];
    }

    function register(string memory _name) public {
        require(openDate < block.timestamp, "Event haven't start yet. Please check event date");
        require(participants[msg.sender].id == 0, "User already join!");
        uint256 len = bytes(_name).length;
        require(len >= 0, "Please enter your name");

        participantsCount ++;
        Participant memory item = Participant(
            participantsCount,
            _name,
            msg.sender,
            block.timestamp
        );
        participants[msg.sender] = item;

        emit JoinEvent(_name, msg.sender);
    }
}
