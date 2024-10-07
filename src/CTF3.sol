// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ ///////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}

contract CTF3 is Isolution3 {
    // Using the Isolution3 interface write a function that
    // unpacks our data that was packed using
    // abi.encodePacked(a, b, c). Where a is type uint16, b is
    // type bool and c is type bytes6.
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        //bytes memory packed;
        //packed = encodeValue();
        assembly {
            // len := mload(packed) //9
            // word := mload(add(packed,32))
            a := mload(add(packed, 2))
            b := and(mload(add(packed, 3)), 1)
            c := mload(0xa3)
        }
        return (a, b, c);
    }

    // // function encodeValue(uint16 _uint16, bool _bool, bytes6 _bytes6) public pure returns (bytes memory){
    // function encodeValue() public pure returns (bytes memory){
    //     // bytes memory vals = abi.encodePacked(uint16(_uint16), bool(_bool), bytes6(_bytes6));
    //     bytes memory vals = abi.encodePacked(uint16(3), bool(false), bytes6("ffffff"));
    //     return vals;
    // } //0x000300313131313131
    //         //   0x313131313131

    // function decod() external pure returns (bytes memory packed) {
    //     // bytes memory packed;
    //     packed = encodeValue();
    //     return packed;
    // }
}
