// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Script, console} from "forge-std/Script.sol";
import {CTF1} from "../src/CTF1.sol";

contract DeployCTF1 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CTF1 ctf1 = new CTF1();
        console.log("Contract deployed to: ", address(ctf1));

        vm.stopBroadcast();
    }
}
