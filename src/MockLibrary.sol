// SPDX‑License‑Identifier: MIT
pragma solidity ^0.6.6;

library MockLibrary {
    function inc(uint x) external pure returns (uint) {
        return x + 1;
    }

    // function dec(uint x) external pure returns (uint) {
    //     return x - 1;
    // }
}
