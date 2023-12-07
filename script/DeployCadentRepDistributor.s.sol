// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {CadentRepDistributor} from "../src/CadentRepDistributor.sol";

contract DeployCadentRepDistributor is Script {
    function run(
        address repTokens,
        uint256 amountToDistributePerCadence,
        uint256 cadence
    ) external returns (CadentRepDistributor) {
        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CadentRepDistributor cadentRepDistributor = new CadentRepDistributor(
            address(repTokens),
            amountToDistributePerCadence,
            cadence
        );
        vm.stopBroadcast();
        return cadentRepDistributor;
    }
}
