// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-periphery/contracts/libraries/UniswapV2Library.sol";


contract UseUniLibrary {
    address public tokenA;
    address public tokenB;

    // Echidna will fuzz these
    function setTokens(address _a, address _b) public {
        tokenA = _a;
        tokenB = _b;
    }

    // Direct library call exposed for manual testing if you like
    function testSort() public view returns (address, address) {
        return UniswapV2Library.sortTokens(tokenA, tokenB);
    }

    // ✅ Property check — no arguments allowed
    function echidna_sort_not_zero() public view returns (bool) {
        (address x, address y) = testSort();
        // We only need to ensure neither is zero
        return x != address(0) && y != address(0);
    }
}


// import "openzeppelin-contracts/contracts/utils/math/Math.sol";
// // import 

// contract UseSafeMath {
//     using Math for uint256;

//     uint256 public total;

//     function addTwoNumber(uint256 x, uint256 y) public {
//         total = x.add(y);
//     }

//     function echidna_safe_add() public view returns (bool) {
//         return total >= 0;
//     }
// }




