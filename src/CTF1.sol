//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/////////////////// ☆☆ extropyio ☆☆ ///////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

interface Isolution1 {
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y)
        external
        pure
        returns (uint256[2][3] memory);
}

contract CTF1 is Isolution1 {
    // Write a function that adds two matrices returns the result.
    // To keep things simple the array sizes will be fixed sizes of
    // 2x3 (uint256[2][3]).
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y)
        external
        pure
        override
        returns (uint256[2][3] memory)
    {
        // declared inside function to keep function pure
        uint256[2][3] memory result;
        uint256[2][3] memory _x = x;
        uint256[2][3] memory _y = y;

        result[0][0] = _x[0][0] + _y[0][0];
        result[0][1] = _x[0][1] + _y[0][1];
        result[1][0] = _x[1][0] + _y[1][0];
        result[1][1] = _x[1][1] + _y[1][1];
        result[2][0] = _x[2][0] + _y[2][0];
        result[2][1] = _x[2][1] + _y[2][1];

        return result;
    }
}
