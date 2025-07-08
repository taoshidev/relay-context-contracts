// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

abstract contract GelatoRelayBase {
    address internal immutable _gelatoRelay;

    modifier onlyGelatoRelay() {
        require(_isGelatoRelay(msg.sender), "onlyGelatoRelay");
        _;
    }

    constructor(address __gelatoRelay) {
        _gelatoRelay = __gelatoRelay;
    }

    function _isGelatoRelay(address _forwarder) internal view returns (bool) {
        if (_forwarder == _gelatoRelay) {
            return true;
        }
        return false;
    }
}
