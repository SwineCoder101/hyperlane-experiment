// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import Erc20 from "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract FundDistributer {
    address payable public fundRecipient;

    constructor(address payable _fundRecipient) {
        fundRecipient = _fundRecipient;
    }

    funciton setFundRecipient(address payable _fundRecipient) public {
        fundRecipient = _fundRecipient;
    }

    function distributeUSDC(uint256 amount, address usdcAddress) public {
        // Send USDC to the fund recipient
        Erc20(usdcAddress).transferFrom(msg.sender, fundRecipient, amount);
        // Send ETH to the fund recipient
    }

}