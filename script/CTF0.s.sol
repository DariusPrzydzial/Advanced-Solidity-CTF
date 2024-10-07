// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {Script, console} from "forge-std/Script.sol";
import "../src/CTF0.sol";

contract DeployLevel0Contract is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CTF0 ctf0 = new CTF0();
        console.log("Contract deployed to: ", address(ctf0));

        vm.stopBroadcast();
    }
}
