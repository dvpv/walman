// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract BundleStorage {
    mapping(address => Vault) vaults;
    struct Vault {
        Bundle[] bundles;
    }
    struct Bundle {
        string content;
        string createdAt;
    }

    function addBundle (string memory content, string memory createdAt) public {
        vaults[msg.sender].bundles.push(Bundle({content: content, createdAt: createdAt}));
    }

    function removeBundle (uint id) public {
        require(vaults[msg.sender].bundles.length > id, "Index out of scope");
        for (uint i = id; i < vaults[msg.sender].bundles.length - 1; i++){
            vaults[msg.sender].bundles[i] = vaults[msg.sender].bundles[i+1];
        }
        vaults[msg.sender].bundles.pop();
    }

    function getVault () public view returns(Vault memory) {
        return vaults[msg.sender];
    }

    function getLatestBundle () public view returns(Bundle memory) {
        require(vaults[msg.sender].bundles.length > 0, "No bundles available");
        return vaults[msg.sender].bundles[vaults[msg.sender].bundles.length - 1];
    }

}