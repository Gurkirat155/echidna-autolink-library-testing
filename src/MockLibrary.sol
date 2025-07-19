// SPDX‑License‑Identifier: MIT
pragma solidity ^0.8.0;

library MockLibrary {
    function inc(uint x) public pure returns (uint) {
        return x + 1;
    }

    function dec(uint x) public pure returns (uint) {
        return x - 1;
    }
    
    // function inc(uint x) internal pure returns (uint) {
    //     return x + 1;
    // }

    // function dec(uint x) internal pure returns (uint) {
    //     return x - 1;
    // }
}
