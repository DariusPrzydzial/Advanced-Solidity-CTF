// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF4} from "../src/CTF4.sol";

contract SolutionTest is Test {
    CTF4 public ctf4;

    function setUp() public {
        ctf4 = new CTF4();
    }

    function test_solution() public view {
        // stdin: 1                     stdout: 1 or 2**0
        uint256 result = ctf4.solution(1);
        assertEq(result, 1, "Solution Failed with value 1");
        // stdin: 10                    stdout: 8 or 2**3
        result = ctf4.solution(10);
        assertEq(result, 8, "Solution Failed with value 10");
        // stdin: 21                    stdout: 16 or 2**4
        result = ctf4.solution(21);
        assertEq(result, 16, "Solution Failed with value 21");
        // stdin: 2048                  stdout: 2048 or 2**11
        result = ctf4.solution(2048);
        assertEq(result, 2048, "Solution Failed with value 2048");
        // stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
        result = ctf4.solution(9223372036854775808);
        assertEq(result, 9223372036854775808, "Solution Failed with value 9223372036854775808");
        // stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
        result = ctf4.solution(0xffffffff);
        assertEq(result, 2147483648, "Solution Failed with value 0xffffffff");
    }
}
