// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ ///////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

interface Isolution {
    function solution() external pure returns (uint8);
}

contract CTF0 is Isolution {
    // Write a function that returns uint8 value of 42.
    function solution() external pure returns (uint8) {
        // return 42;
        assembly {
            mstore(0, 0x2a)
            return(0, 0x20)
        }
    }
}
