// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import {Test, console2} from "forge-std/Test.sol";
import {CTF1} from "../src/CTF1.sol";

contract SolutionTest is Test {
    CTF1 public ctf1;

    uint256[2][3] public matrix1 = [[1, 2], [3, 4], [5, 6]];
    uint256[2][3] public matrix2 = [[6, 5], [4, 3], [2, 1]];
    uint256[2][3] public expected = [[7, 7], [7, 7], [7, 7]];
    uint256[2][3] public result;

    function setUp() public {
        ctf1 = new CTF1();
    }

    function test_MatrixAddition() public {
        result = ctf1.solution(matrix1, matrix2);
        assertEq(result[0][0], expected[0][0], "Matrix addition error at position");
        assertEq(result[0][1], expected[0][1], "Matrix addition error at position");
        assertEq(result[1][0], expected[1][0], "Matrix addition error at position");
        assertEq(result[1][1], expected[1][1], "Matrix addition error at position");
        assertEq(result[2][0], expected[2][0], "Matrix addition error at position");
        assertEq(result[2][1], expected[2][1], "Matrix addition error at position");
    }
}
