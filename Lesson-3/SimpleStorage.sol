// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; //This is the version 


contract SimpleStorage{
    //Basic Types :boolean,uint,int address,bytes
    // bool hasfavoriteNumber=true;
    // int favoriteNumber=88;
    // string favoriteNumberInText="eighty-eight";
    // int256 favoriteInt=-88;
    // address myAddress =0xaD4709B38a075742E4B2E0fdaf8Ee9E046F4b415 ;
    // bytes32 favoriteBytes32="cat"; 
    uint256  myfavoriteNumber; // this gets initilized to 0
    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic Array
    Person[] public listOfPeople; //[]
    //static Array
    // Person[3] public listOfPeople1; //[]

    // Person public pat=Person({favoriteNumber:7,name:"Pat"});
    // Person public Gun=Person({favoriteNumber:8,name:"Gun"});
    mapping(string =>uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myfavoriteNumber=_favoriteNumber;
    }
    //view,pure
    function retrive() public view returns(uint256){
        return myfavoriteNumber;
    }
    //calldata,memory ,storage
    function addPerson(uint256 _favoriteNumber,string memory _name) public {
        // Person memory newPerson =Person(_favoriteNumber,_name);
        listOfPeople.push(Person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}
contract SimpleStorage1 {
    
}
contract SimpleStorage2 {
    
}
contract SimpleStorage3 {
    
}