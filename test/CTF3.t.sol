// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF3} from "../src/CTF3.sol";

contract SolutionTest is Test {
    CTF3 public ctf3;

    function setUp() public {
        ctf3 = new CTF3();
    }

    function test_solution() public view {
        bytes memory vals = abi.encodePacked(uint16(10), bool(true), bytes6("ffffff"));
        (uint16 a, bool b, bytes6 c) = ctf3.solution(vals);
        assertEq(a, 10, "Failed with small numbers");
        assertEq(b, true, "Failed with small numbers");
        assertEq(c, "ffffff", "Failed with small numbers");
    }
}
