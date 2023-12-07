// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {CadentRepDistributor} from "../src/CadentRepDistributor.sol";
import {DeployCadentRepDistributor} from "./DeployCadentRepDistributor.s.sol";

contract DeployCadentRepDistributorWithData is Script {
    address repTokens = 0x9f7ee482489C3792749cA1A4e44DBaF552282675;
    uint256 amountToDistributePerCadence = 100;
    uint256 cadence = 6000;

    function run() external returns (CadentRepDistributor) {
        DeployCadentRepDistributor deployer = new DeployCadentRepDistributor();
        return deployer.run(repTokens, amountToDistributePerCadence, cadence);
    }
}
