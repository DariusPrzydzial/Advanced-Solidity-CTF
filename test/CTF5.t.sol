// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF5} from "../src/CTF5.sol";

contract SolutionTest is Test {
    CTF5 public ctf5;

    function setUp() public {
        ctf5 = new CTF5();
    }

    function test_solution() public view {
        int256 result = ctf5.solution(1, 1);
        console2.log("1 1 Result:     %s", result);
        assertEq(result, 1, "Failed with small numbers");
        result = ctf5.solution(1, 2);
        console2.log("1 2 Result:     %s", result);
        assertEq(result, 2, "Failed with small numbers");
        result = ctf5.solution(0, 2 ** 256 / 2 - 1);
        console2.log("0 max Result:   %s", result);
        assertEq(result, 2 ** 256 / 4, "Failed with small numbers");
        result = ctf5.solution(2 ** 256 / 2 - 1, 2 ** 256 / 2 - 1);
        console2.log("max max Result: %s", result);
        assertEq(result, 2 ** 256 / 2 - 1, "Failed with small numbers");
    }
}
