// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Script, console} from "forge-std/Script.sol";
import {CTF2} from "../src/CTF2.sol";

contract DeployCTF2 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CTF2 ctf2 = new CTF2();
        console.log("Contract deployed to: ", address(ctf2));

        vm.stopBroadcast();
    }
}
