pragma solidity ^0.8.13;

contract ArrayIncrement {
    uint256 public counter;

    function incrementBy(uint256[] calldata arr) external {
        uint256 tmpCounter = 0;
        uint arrayLength = arr.length;
        for (uint256 idx = 0; idx < arrayLength; ) {
            tmpCounter += arr[idx];
            unchecked {
                idx++;
            }
        }
        counter += tmpCounter;
    }
}
