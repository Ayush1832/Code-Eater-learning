// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
event Transfer(address indexed from, address indexed to, uint256 value);
event Approval(address indexed owner, address indexed spender, uint256 value);
function totalSupply() external view returns (uint256);
function balanceOf(address account) external view returns (uint256);
function transfer(address to, uint256 value) external returns (bool);
function allowance(
    address owner,
    address spender
) external view returns (uint256);
function approve(address spender, uint256 value) external returns (bool);
function transferFrom(
    address from,
    address to,
    uint256 value
) external returns (bool);
}

contract ERC20 is IERC20 {
    uint256 public override totalSupply = 1000;
    uint8 public decimals = 0;
    string public name = "TestToken";
    string public symbol = "TTK";
