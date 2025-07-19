// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

// import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
// import "@uniswap/v2-periphery/contracts/libraries/UniswapV2Library.sol";
import "./MockLibrary.sol";


contract UseUniLibrary {
    uint public last = 1;

    function doInc(uint x) public {
        last = MockLibrary.inc(x);
    }

    // function doDec(uint x) public {
    //     last = MockLibrary.dec(x);
    // }

    
    function invariant_last_nonzero() public view  {
        assert(last >= 1);
    }
}

// ------UNI testing internal lib testing------
// contract UseUniLibrary {
//     address public tokenA;
//     address public tokenB;

//     // Echidna will fuzz these
//     constructor() public payable {}

//     function setTokens(address _a, address _b) public {
//         tokenA = _a;
//         tokenB = _b;
//     }

//     // Direct library call exposed for manual testing if you like
//     function testSort() public view returns (address, address) {
//         return UniswapV2Library.sortTokens(tokenA, tokenB);
//     }

//     // ✅ Property check — no arguments allowed
//     function invariant_sort_not_zero() public view  {
//         (address x, address y) = testSort();
//         // We only need to ensure neither is zero
//        assert(x != address(0) && y != address(0));
//     }
// }





