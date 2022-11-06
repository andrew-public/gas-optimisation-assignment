pragma solidity ^0.8.13;

contract ArrayIncrement {
    uint256 private _counter;

    function incrementBy(uint256[] calldata arr) external {
        uint256 tmpCounter = 0;
        for (uint256 idx = 0; idx < arr.length; ) {
            tmpCounter += arr[idx];
            unchecked {
                idx++;
            }
        }
        _counter += tmpCounter;
    }

    function counter() external view returns  (uint256){
         return _counter;
    }
}
