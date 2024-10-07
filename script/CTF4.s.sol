// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Script, console} from "forge-std/Script.sol";
import "../src/CTF4.sol";

contract DeployLevel0Contract is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CTF4 ctf4 = new CTF4();
        console.log("Contract deployed to: ", address(ctf4));

        vm.stopBroadcast();
    }
}
