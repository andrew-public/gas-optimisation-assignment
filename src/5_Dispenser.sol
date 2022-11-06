// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Dispenser {
    address immutable receiver1;
    address immutable receiver2;
    address immutable receiver3;
    uint256 immutable startTime;

    constructor(address[3] memory _receivers) payable {
        receiver1 = _receivers[0];
        receiver2 = _receivers[1];
        receiver3 = _receivers[2];
        startTime = block.timestamp;
    }

    function dispense() external {
        require(
            block.timestamp > startTime + 3 days,
            "Dispense period has not started"
        );

        uint amount = address(this).balance / 3;
        payable(receiver1).transfer(amount);
        payable(receiver2).transfer(amount);
        payable(receiver3).transfer(amount);
    }
}
