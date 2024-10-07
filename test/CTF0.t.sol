// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF0} from "../src/CTF0.sol";

contract SolutionTest is Test {
    CTF0 public ctf0;

    uint256 public result;

    function setUp() public {
        ctf0 = new CTF0();
    }

    function test_solution() public {
        result = ctf0.solution();
        assertEq(result, 42, "Solution does not return expected value");
    }
}
