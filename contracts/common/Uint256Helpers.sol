// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

// https://github.com/aragon/aragonOS/blob/next/contracts/common/Uint256Helpers.sol

library Uint256Helpers {
    uint256 private constant MAX_UINT64 = uint64(-1);

    string private constant ERROR_NUMBER_TOO_BIG = "UINT64_NUMBER_TOO_BIG";

    function toUint64(uint256 a) internal pure returns (uint64) {
        require(a <= MAX_UINT64, ERROR_NUMBER_TOO_BIG);
        return uint64(a);
    }
}
