// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/////////////////// ☆☆ extropyio ☆☆ ///////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

interface Isolution4 {
    function solution(uint256 number) external pure returns (uint256);
}

contract CTF4 is Isolution4 {
    // Using the Isolution4 interface write a function that takes
    // a uint256 value and returns the greatest power of 2,
    // (2 ^ n) that is less than or equal to the input value.
    // The input value is a number between 2^0 and 2^256 -1
    // stdin: 1                     stdout: 1 or 2**0
    // stdin: 10                    stdout: 8 or 2**3
    // stdin: 21                    stdout: 16 or 2**4
    // stdin: 2048                  stdout: 2048 or 2**11
    // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
    // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
    function solution(uint256 number) external pure override returns (uint256) {
        if (number == 0) {
            assembly {
                mstore(0, 0x00)
                return(0, 0x20)
            }
        }
        uint256 greatestPower = 1;
        while (number > 1) {
            number >>= 1;
            greatestPower <<= 1;
        }
        return greatestPower;
    }
}
