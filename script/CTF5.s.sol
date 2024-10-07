// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Script, console} from "forge-std/Script.sol";
import {CTF5} from "../src/CTF5.sol";

contract DeployCTF5 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CTF5 ctf5 = new CTF5();
        console.log("Contract deployed to: ", address(ctf5));

        vm.stopBroadcast();
    }
}
