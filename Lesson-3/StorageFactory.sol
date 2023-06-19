// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory {

    //uint256 public favoriteNumber
    //tyle visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;
    function createSimpleStorageContract() public  {
        SimpleStorage newSimpleStorageContract=new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public {
        //Address
        //ABi-Application BInary Interface
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}